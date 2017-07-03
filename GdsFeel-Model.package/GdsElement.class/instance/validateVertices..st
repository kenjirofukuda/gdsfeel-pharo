accessing
validateVertices: aPointArray
	(aPointArray size < self requiredVertexCount) 
		ifTrue: [self error: 'required vertex count is ', self requiredVertexCount printString, 'but: ', aPointArray size printString].
	^aPointArray.