event handling
customMouseMove: aMouseButtonEvent
	self trackingObject
		ifNotNil: [ :track | 
			track currentEvent: aMouseButtonEvent copy.
			track viewMove ]