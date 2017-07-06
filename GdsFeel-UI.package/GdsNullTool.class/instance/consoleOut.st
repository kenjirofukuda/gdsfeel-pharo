action
consoleOut
	| resultPoint |
	resultPoint := self snapedWorldPoint2.
	GdsFeel ifDebugOn: [:s |
		s nextPutAll: event printString.
		s cr.
		s nextPutAll: (self worldPoint) printString]