event handling
rangeMouseOver: anEvent
	prevOverPoint ifNil: [ prevOverPoint := 0 @ 0 ].
	prevOverPoint = anEvent cursorPoint
		ifFalse: [ 
			prevOverPoint := anEvent cursorPoint.
			self moveHandler: anEvent.
			"(anEvent asString , anEvent timeStamp asString) traceCr" ]