accessing
crossPoint
	^ crossPoint ifNil: [crossPoint := self virtualCrossPoint adhereTo: self lineSegment bounds].