event handling
mouseMove: anEvent
	self handleEventsBySelf
		ifFalse: [ ^ super mouseMove: anEvent ].
	self trackingObject
		ifNotNil: [ :track | 
			track currentEvent: anEvent copy.
			track viewMove ]