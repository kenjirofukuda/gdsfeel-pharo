accessing-points
verticesAt: index put: aPoint fixClosed: aBoolean.
	(aBoolean and: [index = 1 or: [colVertices size = index]])
		ifFalse: [colVertices at: index put: aPoint]
		ifTrue: [
			colVertices at: 1 put: aPoint.
			colVertices at: (colVertices size) put: aPoint].
	self changed: #geometry.