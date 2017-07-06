drawing-world
drawOn: aCanvas markDiamondPointAt: aWorldPoint pixelUnit: unit
	| points |
	points := self pixelPointsOfDiamondPointAt: aWorldPoint pixelUnit: unit.
	aCanvas drawPolygon: points color: nil borderWidth: 1 borderColor: self penColor
	