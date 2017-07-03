accessing-points
closeVertex
	(self needsCloseBoundary)
		ifTrue: [colVertices add: (self colVertices first copy)].