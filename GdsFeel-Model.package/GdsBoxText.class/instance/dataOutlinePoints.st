accessing
dataOutlinePoints
	"self dataBounds"
	^GeometryUtils verticesFromBounds: (Rectangle encompassing: self vertices).
