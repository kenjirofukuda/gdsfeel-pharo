analisys-linesegment
distanceContextAt: aPoint segment: aLineSegment index: segIndex
	| distanceContext  |
	distanceContext := self distanceContextAt: aPoint segment: aLineSegment.
	distanceContext segIndex: segIndex.
	^ distanceContext.
