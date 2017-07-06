event handling
mouseEnter: anEvent
	self handleEventsBySelf 
		ifFalse: [ ^ super mouseEnter: anEvent ].
	anEvent hand newKeyboardFocus: self.