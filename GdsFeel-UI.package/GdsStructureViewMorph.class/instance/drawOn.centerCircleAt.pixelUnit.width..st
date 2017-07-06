drawing-world
drawOn: aCanvas centerCircleAt: aWorldPoint pixelUnit: unit width: width
	| np1 box|
	np1 := self viewport xy2hv: aWorldPoint.
	box := Rectangle center: np1 extent: (unit * 2)@(unit * 2).
	aCanvas frameOval: box width: width color: self penColor.