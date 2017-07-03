testing
needsCloseBoundary
	^ self isBoundary
		and: [ self colVertices size >= 3 and: [ self colVertices first ~= self colVertices last ] ]