testing
putEnabled
	self elementClass ifNil: [^false].
	^(self vertexCount >= self elementClass requiredVertexCount)
