event handling
mouseUp: anEvent
	| ellapsedTime |
	downTimeStamp ifNil: [ ^ self ].
	worldPoints add: (self worldPointFromGlobalEvent: anEvent).
	anEvent traceCr.
	anEvent shiftPressed
		ifTrue: [ shiftCount := shiftCount + 1 ].
	upTimeStamp := anEvent timeStamp.
	ellapsedTime := upTimeStamp - downTimeStamp.
	ellapsedTime traceCr.
	moveCount = 0
		ifTrue: [ 
			ellapsedTime < 500
				ifTrue: [ 
					self singleAction: anEvent.
					worldPoints removeAll ]
				ifFalse: [ 
					upDragging := true.
					self inform: 'start dragging' ] ]
		ifFalse: [ 
			worldPoints first ~= worldPoints last
				ifTrue: [ 
					self rangeAction: anEvent.
					worldPoints removeAll ] ].
	morph removeFeedbackCanvas.
