world-geometry
worldViewCorner
	| globalPoint |
	globalPoint := self pixelBounds right@self pixelBounds top.
	^self worldPointFromGlobal: globalPoint.
	