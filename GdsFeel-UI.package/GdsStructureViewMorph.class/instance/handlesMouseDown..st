event handling
handlesMouseDown: anEvent
	self viewport ifNil: [ ^ false ].
	^ self handleEventsBySelf and: [ self pixelBounds containsPoint: anEvent cursorPoint ]