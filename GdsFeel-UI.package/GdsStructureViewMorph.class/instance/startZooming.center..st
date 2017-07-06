zoom animation
startZooming: zoom center: center
	| start end |

		
	start := Time millisecondClockValue.
	end := start + 250.

	self setState: #zooming value: {  center. self viewport transform copy. zoom. start. end}.

	self startStepping