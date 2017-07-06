drawing-world
drawOn: aCanvas centerCrossAt: aWorldPoint pixelUnit: unit width: width
	| np1 |
	np1 := self viewport xy2hv: aWorldPoint.
	aCanvas line: (np1 + (unit negated @0 )) to: (np1 + (unit@0))  width: width  color: self penColor.
	aCanvas line: (np1 + (0 @ unit negated)) to: (np1 + (0 @ unit))  width: width  color: self penColor.	
	