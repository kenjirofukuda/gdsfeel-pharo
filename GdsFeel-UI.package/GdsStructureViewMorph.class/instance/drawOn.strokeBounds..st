drawing-world
drawOn: aCanvas strokeBounds: aBounds
	self drawOn:  aCanvas polyLineVertices: (GeometryUtils verticesFromBounds: aBounds).		
