geometry
extent: aPoint
	super extent: aPoint.
	self viewport extent: aPoint.
	self announcer announce: #graphicViewResized