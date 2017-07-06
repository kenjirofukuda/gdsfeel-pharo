as yet unclassified
detectPointArrayClassFullRange: aBoolean 
	| shortPointArrayClazz |
	shortPointArrayClazz := Smalltalk at: #ShortPointArray ifAbsent: [ PointArray ].
	^aBoolean
		ifTrue: [ PointArray]
		ifFalse:[ shortPointArrayClazz]