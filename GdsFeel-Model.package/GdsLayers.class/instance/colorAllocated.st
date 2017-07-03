testing
colorAllocated
	layers ifNil: [ ^ false ].
	^(layers values allSatisfy: [ :layer | layer color = Color white]) not