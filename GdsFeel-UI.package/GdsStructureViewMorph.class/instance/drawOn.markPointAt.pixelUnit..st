drawing-world
drawOn: aCanvas markPointAt: aWorldPoint pixelUnit: unit
	| center p1 p2 p3 p4|
	center := self viewport xy2hv: aWorldPoint.
	p1 := center + (unit negated@unit negated).
	p2 := center + (unit@unit).
	p3 := center + (unit@unit negated).
	p4 := center + (unit negated@unit).
	aCanvas line: p1 to: p2 width: 1 color: self penColor.
	aCanvas line: p3 to: p4 width: 1 color: self penColor.
	