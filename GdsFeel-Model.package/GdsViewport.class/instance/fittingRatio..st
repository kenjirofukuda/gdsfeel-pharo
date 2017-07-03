accessing
fittingRatio: aFloat
	fittingRatio := (aFloat > 1.0 or: [aFloat < 0.5]) ifTrue: [self defaultFittingRatio] ifFalse: [aFloat].