accessing
findNearestElementByPoint: resultPoint 
	^ self structure 
		findNearestElementByPoint: resultPoint
		elements: (self idEnabledElementsInverted: self idSelecter = #unId:)