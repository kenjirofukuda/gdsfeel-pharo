*GdsFeel-Foundation-extension
intersectSegment1: seg1 segment2: seg2 hasCrossBlock: aCrossPointBlock ifNone: aNoneBlock epsilon: epsilon
	| crossPoint |
	crossPoint := seg1 intersectionWith: seg2.
	crossPoint
		ifNil: [ 
			| crossPoint2 |
			crossPoint2 := seg1 intersectionWith: seg2 virtualAllowed: true.
			crossPoint2
				ifNotNil: [ 
					(seg1 controlPoints , seg2 controlPoints anySatisfy: [ :p | (p dist: crossPoint2) < epsilon ])
						ifTrue: [ crossPoint := crossPoint2 ] ] ].
	crossPoint ifNotNil: [ aCrossPointBlock value: crossPoint ] ifNil: [ aNoneBlock value ]