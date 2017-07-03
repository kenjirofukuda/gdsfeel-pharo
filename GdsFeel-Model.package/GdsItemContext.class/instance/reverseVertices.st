develop-now
reverseVertices
	self vertexCount < 2 ifTrue: [^self].
	colVertices := colVertices reversed.
	self changed: #geometry.
	