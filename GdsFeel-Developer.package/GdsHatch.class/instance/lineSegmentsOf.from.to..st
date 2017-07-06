drawing-support
lineSegmentsOf: aBoundsRectangle from: pt1 to: pt2
	^self lineSegmentsOf: aBoundsRectangle  normalizedPoint: (pt2 - pt1) normalized. 