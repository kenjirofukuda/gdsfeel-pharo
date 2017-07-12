event handling
customMouseMove: aMouseButtonEvent
	self trackingObject
		ifNotNil: [ :track | 
			track currentEvent: aMouseButtonEvent copy.
			(self isNavigarionClick: aMouseButtonEvent)
				ifTrue: [ track viewMove ] ]