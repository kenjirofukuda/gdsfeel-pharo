drawing-world
pixelPointsOfDiamondPointAt: aWorldPoint pixelUnit: unit
	| center p1 p2 p3 p4 points |
	center := self viewport xy2hv: aWorldPoint.
	p1 := center + (0@unit).
	p2 := center + (unit@0).
	p3 := center + (0@unit negated).
	p4 := center + (unit negated@0).
	points := { p1 . p2 . p3  . p4  }.
	^points	