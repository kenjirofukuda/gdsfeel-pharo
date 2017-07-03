accessing-points
verticesAt: index put: aPoint
	self verticesAt:  index put: aPoint  fixClosed: self isBoundary.