drawing-world
drawOn: aCanvas pointAt: aWorldPoint
	| np1 |
	np1 := self viewport xy2hv: aWorldPoint.
	aCanvas line: np1 to: np1 width: 1 color: self penColor.
	