accessing
lineSegment
	^ lineSegment ifNil: [ lineSegment := LineSegment from: 0 @ 0 to: 0 @ 0 ]