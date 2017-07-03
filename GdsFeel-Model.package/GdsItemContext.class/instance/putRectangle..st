utility
putRectangle: aRectangle
	self  boundary.
	(GeometryUtils verticesFromBounds: aRectangle)
		do: [:each | self  ce: each].
	self  put.