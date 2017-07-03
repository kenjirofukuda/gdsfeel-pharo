accessing
side
	^ side ifNil: [  side := lineSegment  sideOfPoint: testPoint ]