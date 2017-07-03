outline
outlinePointsOf: aLineSegment
	| points |
	points := #() copy.
	self offsetRadiansAndRadiusDo: [:radians :r |
		points := aLineSegment outlinePoints: radians r: r.].
	^points