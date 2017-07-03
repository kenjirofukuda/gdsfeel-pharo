transforms
snapedWorldPoint:  aWorldPoint
	^(GeometryUtils point: aWorldPoint roundTo: (self gridScale)) + self gridOffset.