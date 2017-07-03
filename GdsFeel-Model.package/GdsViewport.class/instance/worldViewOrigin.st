world-geometry
worldViewOrigin
	| globalPoint |
	globalPoint := self pixelBounds left@self pixelBounds bottom.
	^self worldPointFromGlobal: globalPoint.
	