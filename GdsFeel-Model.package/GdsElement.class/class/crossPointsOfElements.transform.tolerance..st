analisys
crossPointsOfElements: elements transform: aTransform tolerance: aTolerance
	| allPoints |
	allPoints := OrderedCollection new.
	elements
		do: [ :each | 
			each isReference
				ifTrue: [ | newTransform |
					newTransform := aTransform composedWithLocal: each transform.
					allPoints
						addAll: (self crossPointsOfElements: each refStructure elements transform: newTransform) ]
				ifFalse: [ each
						lineSegmentsDo: [ :seg1 | 
							| seg1t seg2t |
							seg1t := LineSegment
								from: (aTransform transformPoint: seg1 start)
								to: (aTransform transformPoint: seg1 end).
							elements
								do: [ :each2 | 
									each == each2
										ifFalse: [ each2
												lineSegmentsDo: [ :seg2 | 
													seg2t := LineSegment
														from: (aTransform transformPoint: seg2 start)
														to: (aTransform transformPoint: seg2 end).
													LineSegment
														intersectSegment1: seg1t
														segment2: seg2t
														hasCrossBlock: [ :crossPoint | allPoints add: (crossPoint roundTo: 1e-12) ]
														ifNone: [  ]
														epsilon: aTolerance ] ] ] ] ] ].
	^ allPoints asSet asArray