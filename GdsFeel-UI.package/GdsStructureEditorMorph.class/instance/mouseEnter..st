event handling
mouseEnter: anEvent
	super mouseEnter: anEvent.
	self handleEventsBySelf 
		ifFalse: [ ^  self ].
	GdsFeel ifDebugOn: [:s | 
		s nextPutAll: 'mouseEnter: ' .
		s nextPutAll: (anEvent printString)].
	self enterArea: anEvent.
