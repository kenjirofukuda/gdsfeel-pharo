damage control
invalidMarkDiamondAt: aWorldPoint
	| aRectangle |
	aRectangle := GeometryUtils 
		lookupDataBounds: (
			self pixelPointsOfDiamondPointAt:  aWorldPoint pixelUnit: 10).
	self invalidRect: aRectangle.