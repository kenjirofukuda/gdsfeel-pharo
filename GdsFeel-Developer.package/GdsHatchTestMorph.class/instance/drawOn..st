as yet unclassified
drawOn: aCanvas
	| cp sp theta |
	super drawOn: aCanvas.
	cp := self innerBounds center.
	sp := Sensor cursorPoint.
	theta := (sp - cp) theta.
	aCanvas clipBy: self innerBounds during: [:clipedCanvas |
	(hatch lineSegmentsOf: self innerBounds from: cp  to:  sp) do: [:seg |
		clipedCanvas line: seg first to:seg second  width: 1 color: Color black]].
	aCanvas drawString:   theta asString at:  cp .
	aCanvas drawString:   (theta radiansToDegrees  roundTo: 0.01 )asString at:  cp + (0@15).	
	
	aCanvas drawString:   (((sp - cp) normalized) roundTo: 0.01 )asString at:  cp + (0@30)	
	