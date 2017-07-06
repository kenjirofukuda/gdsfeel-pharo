event handling
mouseLeave: anEvent
	self handleEventsBySelf 
		ifFalse: [ ^ super mouseLeave: anEvent ].
	anEvent hand newKeyboardFocus: nil.	