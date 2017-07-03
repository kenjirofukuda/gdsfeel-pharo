accessing-points
verticesWithoutClosePoint
	self boundaryClosed
		ifTrue: [^self vertices allButLast].	
	^self vertices