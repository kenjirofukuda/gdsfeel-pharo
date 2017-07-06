drawing
markUpdateBounds: aPoint
	| upBounds |
	upBounds := Rectangle center: (morph viewport xy2hv: aPoint) extent: 10@10.
	upBounds := upBounds translateBy: morph pixelBounds origin.
	^upBounds
