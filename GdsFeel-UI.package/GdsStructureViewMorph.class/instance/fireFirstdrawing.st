initialization
fireFirstdrawing
	fastDrawing := true.
	processFirstDrawing ifNotNil: [ processFirstDrawing terminate ].	
	processFirstDrawing := [
		self normalDrawing ] 
			valueAfterWaiting: (Delay forMilliseconds: 500).
	