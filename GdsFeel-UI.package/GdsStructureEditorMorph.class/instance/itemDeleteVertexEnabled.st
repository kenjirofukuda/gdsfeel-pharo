testing-enabled
itemDeleteVertexEnabled
	self structure ifNil: [^false].
	self holdsReference
		ifTrue: [^false].
	self holdsPrimitive
		ifTrue: [^self structure currentItem vertexCount > self structure currentItem editElement class requiredVertexCount].
	^self structure currentItem isEmpty not.