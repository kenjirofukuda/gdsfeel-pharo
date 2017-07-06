event handling
mouseUp: anEvent
	self handleEventsBySelf
		ifFalse: [ ^ super mouseUp: anEvent ].
	self trackingObject
		ifNotNil: [ :track | 
			"'trackEnd' traceCr."
			"self viewport viewCenter: (self viewport viewCenter - (track currentWorldPoint - track startWorldPoint)) ."
			track trackEnd.
			self removeProperty: #gdsTracking ]