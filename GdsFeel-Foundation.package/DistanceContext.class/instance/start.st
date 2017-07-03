accessing
start
	^ start ifNil: [start := lineSegment start dist: testPoint ]