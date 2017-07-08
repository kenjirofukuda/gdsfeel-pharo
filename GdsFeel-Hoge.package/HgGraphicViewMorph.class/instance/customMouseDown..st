event handling
customMouseDown: aMouseButtonEvent
	(self isNavigarionClick: aMouseButtonEvent)
		ifTrue: [ | track |
			track := KFViewTracking new event: aMouseButtonEvent copy.
			self setProperty: #viewTracking toValue: track.
			self activeHand showTemporaryCursor: Cursor move hotSpotOffset: 16 @ 16.  ]