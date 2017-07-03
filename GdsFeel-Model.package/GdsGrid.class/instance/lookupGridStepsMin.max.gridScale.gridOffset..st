utility
lookupGridStepsMin: aMin max: aMax gridScale: aGridScale gridOffset: aGridOffset
	|  start end  values |
	start :=  aMin roundTo: aGridScale.
	end :=  aMax roundTo: aGridScale.
	values := (self class lookupGridStepsMin: start max: end gridScale: aGridScale).
	values := values select: [:each | | v | 
		v := (each rem: aGridScale) abs roundTo: aGridScale.
		(v closeTo:  0.0) or: [v closeTo: aGridScale]].  
	values := values collect: [:each | each + aGridOffset].
	^values
	
	