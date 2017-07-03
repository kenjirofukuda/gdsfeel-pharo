*GdsFeel-Foundation-extension
splitedSegments: aSegments epsilon: aEpsilon
	|  crossPoints allSegs |
	crossPoints := OrderedCollection new.
	aSegments
		do: [ :seg1 | 
			aSegments
				do: [ :seg2 | 
					seg1 == seg2
						ifFalse: [ 
							LineSegment
								intersectSegment1: seg1
								segment2: seg2
								hasCrossBlock: [ :crossPoint | crossPoints add: (crossPoint roundTo: 1e-12) ]
								ifNone: [  ]
								epsilon: aEpsilon ] ] ].
	crossPoints := crossPoints asSet asArray.
	allSegs := OrderedCollection new.
	aSegments
		do: [ :seg | allSegs addAll: (GeometryUtils splitSegment: seg crossPoints: crossPoints epsilon: aEpsilon) ].
	allSegs := allSegs reject: [ :seg | seg length < aEpsilon  ].	
	^ allSegs asSet asArray