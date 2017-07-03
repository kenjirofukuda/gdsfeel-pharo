accessing
endToCross
	^ endToCross ifNil: [endToCross := lineSegment end dist: self crossPoint]