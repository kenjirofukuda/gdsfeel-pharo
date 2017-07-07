event handling
customMouseUp: aMouseButtonEvent
	self trackingObject
		ifNotNil: [ :track | 
			track trackEnd.
			self removeProperty: #viewTracking ]