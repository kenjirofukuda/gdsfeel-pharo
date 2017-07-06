accessing-points
dataOutlinePointsStepAngle: stepAngle
	| angle |
	angle := self endAngleDegress - self startAngleDegress.
	angle negative 
		ifTrue: [ angle := 360 + angle ]. 
	^ self 
		dataOutlinePointsStartAngle: self startAngleDegress  
			endAngle: self startAngleDegress + angle 
			stepAngle: stepAngle.