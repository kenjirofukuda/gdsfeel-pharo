*GdsFeel-Foundation-extension
midPointScaled: aFactor
	| midPoint p1 p2 |
	self assert: (aFactor closeTo: 0.0) not.
	midPoint := self midPoint.
	p1 := self start - midPoint.
	p2 := self end - midPoint.
	^ LineSegment 
		from: (p1 * aFactor / 2) + midPoint
		to: (p2 * aFactor / 2) + midPoint