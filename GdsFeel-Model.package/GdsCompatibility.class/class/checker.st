as yet unclassified
checker
	| clazz |
	clazz := Smalltalk at: #DosFileDirectory ifAbsent: [  ].
	clazz
		ifNotNil: [ ^ clazz new ]
			ifNil: [ 
				clazz := Smalltalk at: #FileSystem ifAbsent: [  ].
				clazz ifNotNil: [ ^ clazz disk ] ] .
	^ nil
