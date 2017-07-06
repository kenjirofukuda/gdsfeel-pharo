event handling
mouseDown: anEvent
	self handleEventsBySelf
		ifFalse: [ ^ super mouseDown: anEvent ].
	(self isNavigarionClick: anEvent)
		ifTrue: [ 
			| track |
			track := GdsTracking new event: anEvent copy.
			self setProperty: #gdsTracking toValue: track ]