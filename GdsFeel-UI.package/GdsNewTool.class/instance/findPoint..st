as yet unclassified
findPoint: aMouseEvent
	findRect := self findRectOfCenter: (self worldPointFromGlobalEvent: aMouseEvent)