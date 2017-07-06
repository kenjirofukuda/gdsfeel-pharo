drawing-support
lineSegmentsOf: aBoundsRectangle
	^self lineSegmentsOf: aBoundsRectangle  normalizedPoint: (Point r: 1 degrees: self angle). 