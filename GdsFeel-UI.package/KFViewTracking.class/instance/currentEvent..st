accessing
currentEvent: aMouseMoveEvent 
	currentEvent := aMouseMoveEvent.
	points add: currentEvent cursorPoint copy.