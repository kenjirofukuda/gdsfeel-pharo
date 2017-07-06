ui building
iconKeyFor: anItem
	(anItem isKindOf: GdsLibrary)
		ifTrue: [ 
			(Smalltalk ui icons respondsTo: #mongoDatabaseIcon)
				ifTrue: [ ^ #mongoDatabaseIcon ].
			^ #databaseIcon ].
	^ #smallObjectsIcon