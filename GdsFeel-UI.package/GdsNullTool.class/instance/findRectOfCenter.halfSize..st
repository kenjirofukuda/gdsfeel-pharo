as yet unclassified
findRectOfCenter: aCenterPoint  halfSize: aHalfSize
	| size |
	size := aHalfSize / morph viewport absoluteScale asPoint.
	^ GeometryUtils lookupDataBounds: {(aCenterPoint - size) . (aCenterPoint + size) }.
