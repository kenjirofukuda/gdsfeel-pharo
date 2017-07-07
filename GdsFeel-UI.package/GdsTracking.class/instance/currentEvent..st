accessing
currentEvent: aMouseMoveEvent 
	super currentEvent: aMouseMoveEvent.
	self structureMorph fireFirstdrawing .