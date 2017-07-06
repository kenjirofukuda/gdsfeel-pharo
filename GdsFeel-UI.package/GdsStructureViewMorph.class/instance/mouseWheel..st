event handling
mouseWheel: event
	| center dir localPoint |
	self handleEventsBySelf 
		ifFalse: [ ^  super mouseWheel: event ].
	 self viewport ifNil: [ ^ self ].	
	localPoint := event cursorPoint - self innerBounds origin.
	center := self viewport worldPointFromLocal: localPoint.
	dir := 1.	
	(KFEventSupport isWheelUpEvent: event) ifTrue: [ dir := 1.0 ].
	(KFEventSupport isWheelDownEvent: event) ifTrue: [ dir := -1.0 ].
	self viewport lockUpdateDuring: [
		self viewport portCenter: localPoint.
		self viewport viewCenter: center.
		self viewport zoom: (1.0 + (0.125 * dir)).].
	self fireFirstdrawing.
	