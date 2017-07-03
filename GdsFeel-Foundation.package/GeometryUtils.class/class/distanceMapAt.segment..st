analisys-linesegment
distanceMapAt: aPoint segment: aLineSegment
	| distanceMap  p distP  |
	distanceMap := Dictionary new.
	distanceMap at: #seg put: aLineSegment.
	p := aPoint nearestPointAlongLineFrom: aLineSegment start to: aLineSegment end.
	distanceMap at: #virtualCrossPoint put: p copy.
	
	p := (distanceMap at: #virtualCrossPoint) 
				adhereTo: (aLineSegment bounds).
	distanceMap at: #crossPoint put: p copy.
	distP := p dist: aPoint.
	distanceMap at: #cross put: distP copy.

	distP := aLineSegment start dist: aPoint.
	distanceMap at: #start put: distP copy.

	distP := aLineSegment start dist: (distanceMap at: #crossPoint).
	distanceMap at: #startToCross put: distP copy.

	distP := aLineSegment end dist: aPoint.
	distanceMap at: #end put: distP copy.

	distP := aLineSegment end dist: (distanceMap at: #crossPoint).
	distanceMap at: #endToCross put: distP copy.

	distanceMap at: #side put: (aLineSegment sideOfPoint: aPoint).
	^distanceMap.