geometry
extent: aPoint
	super extent: aPoint.
	self viewport extent: aPoint.
	self clearOffCanvas.
	self announcer announce: #graphicViewResized