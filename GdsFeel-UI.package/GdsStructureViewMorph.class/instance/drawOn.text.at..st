drawing-world
drawOn: aCanvas text: aObject at: aWorldPoint
	| center |
	center := self viewport xy2hv: aWorldPoint.
	aCanvas drawString: aObject asString at: center font: nil color: self penColor
	