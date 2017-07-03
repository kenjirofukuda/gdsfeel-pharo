lookup
lookupVerticalGridSteps
	^self grid 
		lookupGridStepsMin: self worldViewMinY 
		max: self worldViewMaxY 
		gridScale: (self gridScale y * self grid displayMultiply) gridOffset: self gridOffset y

	
	