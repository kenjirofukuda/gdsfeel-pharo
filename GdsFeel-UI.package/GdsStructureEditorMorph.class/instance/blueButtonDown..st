event handling
blueButtonDown: anEvent
	self inform: anEvent asString.
	super blueButtonDown: anEvent.