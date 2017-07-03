accessing-points
thetasPacked
	| prevSeg |
	^ Array streamContents: [ :s |
		prevSeg := nil.
		self lineSegmentsDo: [ :seg |
			prevSeg ifNotNil: [ 
				| to from |
				to := self absoluteAngle: seg direction theta.
				from := self absoluteAngle: prevSeg reversed direction theta.
				s nextPut: (self absoluteAngle: (to - from))].
			prevSeg := seg ] ]
