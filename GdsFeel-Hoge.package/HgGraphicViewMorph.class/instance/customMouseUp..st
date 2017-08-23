event handling
customMouseUp: aMouseButtonEvent
	self
		trackingDo: [ :track | 
			track trackEnd.
			self removeProperty: #viewTracking.
			self activeHand showTemporaryCursor: nil ]