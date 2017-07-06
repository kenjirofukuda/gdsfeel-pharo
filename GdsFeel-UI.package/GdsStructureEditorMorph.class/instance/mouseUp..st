event handling
mouseUp: anEvent
	self trackingObject ifNil: [ self currentTool mouseUp: anEvent ].
	super mouseUp: anEvent.
