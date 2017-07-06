drawing-world
drawOn: aCanvas lineFrom: aWorldPoint1 to: aWorldPoint2 width: width
	| np1 np2 |
	np1 := self viewport xy2hv: aWorldPoint1.
	np2 := self viewport xy2hv: aWorldPoint2.
	aCanvas line: np1 to: np2 width: width color: self penColor.
	