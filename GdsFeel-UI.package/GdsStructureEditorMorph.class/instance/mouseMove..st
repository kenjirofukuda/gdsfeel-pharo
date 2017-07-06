event handling
mouseMove: anEvent
	self trackingObject ifNil: [ self currentTool mouseMove: anEvent ].
	super mouseMove: anEvent.
