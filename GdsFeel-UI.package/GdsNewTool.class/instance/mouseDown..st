event handling
mouseDown: anEvent
	anEvent traceCr.
	moveCount := 0.
	shiftCount := 0.
	anEvent shiftPressed
		ifTrue: [ shiftCount := 1 ].
	downTimeStamp := anEvent timeStamp.
	worldPoints add: (self worldPointFromGlobalEvent: anEvent).
	upDragging
		ifTrue: [ worldPoints first ~= worldPoints last
				ifTrue: [ self rangeAction: anEvent.
					worldPoints removeAll.
					upDragging := false.
					^ self ] ]