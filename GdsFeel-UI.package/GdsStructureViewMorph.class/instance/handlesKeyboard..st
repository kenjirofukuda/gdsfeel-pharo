event handling
handlesKeyboard: anEvent
	self viewport ifNil: [^false].
	^ self handleEventsBySelf.