accessing
color: aColor
	super color: aColor.
	self removeCachedCanvas.
	self invalidRect: self bounds.