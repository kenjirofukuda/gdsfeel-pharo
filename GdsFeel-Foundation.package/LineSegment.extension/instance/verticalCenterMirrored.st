*GdsFeel-Foundation-extension
verticalCenterMirrored
	| center p1 p2 |
	(self direction x closeTo: 0.0) ifTrue: [ ^ self ].
	center := self midPoint.
	p1 := self start - center.
	p2 := self end - center.
	^ LineSegment from: (p1 verticalMirrored + center) to: (p2 verticalMirrored + center)