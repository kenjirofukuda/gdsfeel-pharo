damage control
updateBoundsFromPoint1: aPoint1 point2: aPoint2
	| upBounds p1 p2 left top right bottom |
	p1 := self viewport xy2hv: aPoint1.
	p2 := self viewport xy2hv: aPoint2.
	left := p1 x min: p2 x.
	top := p1 y min: p2 y.
	right := p1 x max: p2 x.
	bottom := p1 y max: p2 y.
	upBounds := Rectangle left: left right: right top: top bottom: bottom.	
	upBounds := upBounds expandBy: 20.
	upBounds := upBounds translateBy: self pixelBounds origin.
	^upBounds