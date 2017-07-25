drawing sparta
drawExtentBoundsSpartaCanvasOn: aSpartaCanvas
	| xyBounds hvBounds |
	xyBounds := self document bounds.
	hvBounds := (self viewport xy2hv: xyBounds origin)
		corner: (self viewport xy2hv: xyBounds corner).
	aSpartaCanvas stroke
		paint: self extentBoundsColor;
		path: hvBounds;
		draw