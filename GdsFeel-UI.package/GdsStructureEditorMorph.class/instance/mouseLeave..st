event handling
mouseLeave: anEvent
	super mouseLeave: anEvent.
	self handleEventsBySelf 
		ifFalse: [ ^  self ].
	self leaveArea: anEvent.
