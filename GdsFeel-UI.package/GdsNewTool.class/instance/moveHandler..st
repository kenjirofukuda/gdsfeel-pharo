event handling
moveHandler: anEvent
	moveCount ifNil: [ moveCount := 0 ].
	worldPoints add: (self worldPointFromGlobalEvent: anEvent).
	"anEvent traceCr."	
	self findPoint: anEvent.
	moveCount := moveCount + 1.
	moveCount = 1
		ifTrue: [
			referencePoint := worldPoints first.].
	morph rubberbandPoint: worldPoints last.