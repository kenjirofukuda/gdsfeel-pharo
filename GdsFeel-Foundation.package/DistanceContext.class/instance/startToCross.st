accessing
startToCross
	^ startToCross ifNil: [startToCross := lineSegment start dist: self crossPoint]