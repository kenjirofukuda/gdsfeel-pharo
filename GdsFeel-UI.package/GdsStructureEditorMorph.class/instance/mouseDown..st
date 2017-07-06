event handling
mouseDown: anEvent
	(self isNavigarionClick: anEvent)
		ifTrue: [ ^ super mouseDown: anEvent ].		 
	self currentTool mouseDown: anEvent.
