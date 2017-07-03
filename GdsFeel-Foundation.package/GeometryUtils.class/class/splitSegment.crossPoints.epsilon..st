as yet unclassified
splitSegment: aLineSegment crossPoints: aCrossPoints epsilon: epsilon
	^ Array
		streamContents: [ :stream | 
			(aCrossPoints select: [ :tp | tp onLineFrom: aLineSegment start to: aLineSegment end within: epsilon ])
				ifNotEmpty: [ :tpArray | 
					| sorted points |
					points := OrderedCollection new.
					points add: aLineSegment start.
					sorted := tpArray sort: [ :a :b | (a dist: aLineSegment start) < (b dist: aLineSegment start) ].
					points addAll: sorted.
					points add: aLineSegment end.
					points
						doWithIndex: [ :tp :index | 
							| start2 end2 |
							index < points size
								ifTrue: [ 
									start2 := points at: index.
									end2 := points at: index + 1.
									stream nextPut: (LineSegment from: start2 to: end2) ] ] ]
				ifEmpty: [ stream nextPut: aLineSegment ] ]