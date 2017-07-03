analisys-linesegment
distanceContextAt: aPoint segment: aLineSegment
	| distanceInfo |
	distanceInfo := DistanceContext fromPoint: aPoint lineSegment: aLineSegment. 
	^ distanceInfo.