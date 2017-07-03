analisys-linesegment
distanceMapAt: aPoint segment: aLineSegment index: segIndex
	| distanceMap  |
	distanceMap := self distanceMapAt:  aPoint segment: aLineSegment.
	distanceMap at: #segIndex put: segIndex.
	^distanceMap.
