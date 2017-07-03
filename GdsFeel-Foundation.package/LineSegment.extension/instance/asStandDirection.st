*GdsFeel-Foundation-extension
asStandDirection
	| points |
	points := self controlPoints sort: [ :a :b | a y < b y ].
	^ LineSegment from: points first to: points last