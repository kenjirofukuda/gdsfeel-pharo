accessing
xy: aPoint
	self privateWipe.
	super xy: aPoint.
	strans offset: aPoint.
	self refreshBounds.