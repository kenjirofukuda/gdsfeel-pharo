accessing
vertexArray
	^ vertexArray ifNil: [ vertexArray := self  lookupVertexArray ]