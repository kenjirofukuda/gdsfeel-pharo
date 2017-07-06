objects from disk
nibbleArrayTo32bitIntegerArray: aNibbleArray 
	| integer32 col |
	col := OrderedCollection new.
	integer32 := 0.
	aNibbleArray doWithIndex: 
		[ :nibble :index | 
		index odd 
			ifTrue: [ integer32 := nibble bitShift: 28 ]
			ifFalse: 
				[ integer32 := integer32 bitOr: (nibble bitShift: 24).
				col add: integer32 ] ].
	^ col asArray