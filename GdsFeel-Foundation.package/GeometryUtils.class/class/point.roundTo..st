as yet unclassified
point: aPoint roundTo: grid
	"Answer a Point that is the receiver's x and y rounded to grid x and 
	grid y."
	
	| gridPoint nX nY |
	gridPoint := grid asPoint.
	nX := aPoint x copy.
	nY := aPoint y copy.
	(gridPoint x asFloat closeTo: 0.0) 
		ifFalse: [nX := aPoint x roundTo: gridPoint x].
	(gridPoint y asFloat closeTo:  0.0) 
		ifFalse: [nY := aPoint y roundTo: gridPoint y].
	^nX@nY