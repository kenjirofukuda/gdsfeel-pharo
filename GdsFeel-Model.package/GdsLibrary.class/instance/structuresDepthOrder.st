accessing - analisys
structuresDepthOrder
	^ self structures sort: [ :a :b | a maxDepth < b maxDepth ].