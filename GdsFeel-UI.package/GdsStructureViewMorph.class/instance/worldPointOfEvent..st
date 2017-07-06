utility
worldPointOfEvent: event
	| localPoint worldPoint |	
	localPoint := event cursorPoint - self innerBounds origin.
	worldPoint := self viewport worldPointFromLocal: localPoint.
	^ worldPoint