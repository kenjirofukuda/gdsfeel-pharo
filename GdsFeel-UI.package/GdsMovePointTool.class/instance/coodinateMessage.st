prompt message
coodinateMessage
	^self multiMoveSupported 
		ifTrue: ['Coordinate(s):']
		ifFalse: ['Coordinate:']