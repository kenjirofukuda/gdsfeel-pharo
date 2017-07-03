testing
isValidStorageName: aString
	(aString includes: Character space)
		ifTrue: [ ^ false ].
	[ self checker checkName: aString fixErrors: false ]
		on: Error
		do: [ :ex | ^ false ].
	self multilingalNameAllowed
		ifFalse: [ ^ (aString isKindOf: WideString) not ].
	^ true