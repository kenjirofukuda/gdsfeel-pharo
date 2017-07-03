*GdsFeel-Foundation-extension
outlineSegments: offsetRadians r: r do: aLineSegmentBlock
	GeometryUtils pointArray: (self outlinePoints: offsetRadians  r: r)  lineSegmentsDo: aLineSegmentBlock
	