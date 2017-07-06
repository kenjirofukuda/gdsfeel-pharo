damage control
invalidBounds: aRectangle
	false
		ifTrue: [ ^self invalidRect: (self bounds) ].
	self invalidRect: (self updateBoundsFromWorldRectangle: aRectangle).