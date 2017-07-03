accessing-points
vertices: aPointArray
	vertices := aPointArray.
	self removeGeometryCache.
	self refreshBounds.
