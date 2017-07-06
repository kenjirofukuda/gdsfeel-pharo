as yet unclassified
splitByCode: aCode
	| entities ent |
	entities := OrderedCollection new.
	ent := nil.
	self dataGroups do: [ :dataGroup | 
		dataGroup code = aCode
			ifTrue: [
				ent 
					ifNotNil: [
						entities add: ent asArray.
						ent := nil ].
				 ent := OrderedCollection new.
				 ent add: dataGroup	] 
			ifFalse: [ 
				ent 
					ifNotNil: [
						ent add: dataGroup 
					 ]
				 ]
		].
	ent 
		ifNotNil: [
			entities add: ent asArray.
			ent := nil ].
	^ entities asArray
