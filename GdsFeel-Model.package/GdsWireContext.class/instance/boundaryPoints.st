accessing
boundaryPoints
	boundaryPoints ifNil: [boundaryPoints := self lookupBoundaryPoints].
	^boundaryPoints