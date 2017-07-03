outline
outlineSegmentsOf: aLineSegment offsetRadians: radians r: r
	outlineSegMap ifNil: [outlineSegMap := Dictionary new].
	^outlineSegMap 
		at: aLineSegment 
		ifAbsentPut: [aLineSegment outlineSegments: radians r: r].
	