lookup
lookupHorizontalGridSteps
	^self grid 
		lookupGridStepsMin: self worldViewMinX 
		max: self worldViewMaxX 
		gridScale: (self gridScale x * self grid displayMultiply) gridOffset: self gridOffset x
	