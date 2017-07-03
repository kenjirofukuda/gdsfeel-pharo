private
postAndRelease: aGdsNotification
	| all object name |
	name := aGdsNotification name.
	name isEmptyOrNil
		ifTrue: [ Exception signal: 'Tried to post a notification with no name.' ].
	object := aGdsNotification object.
	all := OrderedCollection new.
	self lock
		critical: [ "Find all the observers that specified neither NAME nor OBJECT."
			all addAll: wildcard.

			"Find the observers that specified OBJECT, but didn't specify NAME"
			object
				ifNotNil: [ (nameless at: object ifAbsent: [  ])
						ifNotNil: [ :list | all addAll: list ] ].
			name
				ifNotNil: [ (named at: name ifAbsent: [  ])
						ifNotNil: [ :map | 
							(map at: object ifAbsent: [  ]) ifNotNil: [ :list | all addAll: list ].
							object
								ifNotNil:
									[ (map at: nil ifAbsent: [  ]) ifNotNil: [ :list | all addAll: list ] ] ] ] ].
	all reverse do: [ :o | o performWith: aGdsNotification ].
	^ all