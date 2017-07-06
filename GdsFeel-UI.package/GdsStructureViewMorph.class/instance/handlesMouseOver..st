event handling
handlesMouseOver: anEvent
	self viewport ifNil: [^false].
	^ self handleEventsBySelf.