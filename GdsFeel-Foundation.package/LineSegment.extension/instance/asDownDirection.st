*GdsFeel-Foundation-extension
asDownDirection
	| points |
	points := self controlPoints sort: [ :a :b | a x < b x ].
	^ LineSegment from: points first to: points last