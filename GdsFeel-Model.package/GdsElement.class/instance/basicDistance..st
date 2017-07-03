accessing-points
basicDistance: aPoint
	| col distP |
	col := OrderedCollection new.
	GeometryUtils
		pointArray: self dataOutlinePoints
		lineSegmentsDo: [ :seg | 
			| disCon |
			seg hasZeroLength
				ifFalse: [ 
					disCon := GeometryUtils distanceContextAt: aPoint segment: seg.
					distP := {(disCon start).
					(disCon end).
					(disCon cross)} min.
					col add: distP ] ].
	col ifEmpty: [ ^ aPoint dist: self xy ].
	^ col min