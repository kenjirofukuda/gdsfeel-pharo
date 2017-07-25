drawing
drawExtentBoundsOn: aCanvas
	| xyBounds hvBounds |
	xyBounds := self document bounds.
	hvBounds := (self viewport xy2hv: xyBounds origin)
		corner: (self viewport xy2hv: xyBounds corner).
	aCanvas frameRectangle: hvBounds color: self extentBoundsColor