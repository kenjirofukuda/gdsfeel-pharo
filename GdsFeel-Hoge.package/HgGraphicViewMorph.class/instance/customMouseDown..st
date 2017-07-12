event handling
customMouseDown: aMouseButtonEvent
	| track |
	track := self toolClass new event: aMouseButtonEvent copy.
	self setProperty: #viewTracking toValue: track.
	(self isNavigarionClick: aMouseButtonEvent)
		ifTrue: [ self activeHand showTemporaryCursor: Cursor move hotSpotOffset: 16 @ 16 ]