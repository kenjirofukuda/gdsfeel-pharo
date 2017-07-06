class initialization
bytesFromRezData: aRezString
	| input line bytes bit16items |
	bytes := OrderedCollection new.
	input := ReadStream on: aRezString.
	[ input atEnd ]
		whileFalse: [ 
			line := (input upTo: Character cr) trimOutsideSpace.
			(line beginsWith: '$"')
				ifTrue: [ 
					bit16items := line allButFirst findTokens: ' '.
					bit16items
						do: [ :each | 
							| bit16 |
							bit16 := each select: [ :c | c isAlphaNumeric ].
							bytes
								add:
									(String
										streamContents: [ :s | 
											s nextPutAll: '16r'.
											s nextPutAll: (bit16 copyFrom: 1 to: 2) ]) asNumber.
							bytes
								add:
									(String
										streamContents: [ :s | 
											s nextPutAll: '16r'.
											s nextPutAll: (bit16 copyFrom: 3 to: 4) ]) asNumber. ] ] ].
	^ bytes asArray