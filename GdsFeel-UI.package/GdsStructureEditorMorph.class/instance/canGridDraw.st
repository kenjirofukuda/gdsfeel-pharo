testing
canGridDraw
	^ (self fastDrawing not) and: [self viewport canGridDraw].
	