initialization
setMouseStatus: anEvent
	| hvPoint xyPoint |
	hvPoint := anEvent cursorPoint.
	xyPoint := self graphicView morph viewport transform invertPoint:  hvPoint.
	self logCr: hvPoint -> xyPoint .
	self statusBar morph contents: xyPoint asString