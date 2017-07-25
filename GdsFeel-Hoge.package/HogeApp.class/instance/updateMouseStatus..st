initialization
updateMouseStatus: anEvent
	| hvPoint xyPoint |
	hvPoint := anEvent cursorPoint.
	xyPoint := self graphicView morph viewport transform invertPoint: hvPoint.
	self statusBar setMouseXY: xyPoint.
	self statusBar setMouseHV: hvPoint.
