accessing-points
removeVertexAt: anIndex	
	| savedSize closed |
	savedSize := self colVertices size.
	savedSize = 0 ifTrue: [^self].
	closed := (savedSize >= 4) and: [self colVertices first = self colVertices last].
	colVertices removeAt: anIndex.
	(self isBoundary and: [closed])
		ifTrue: [
			anIndex = 1
				ifTrue: [colVertices removeLast].
			anIndex = savedSize
				ifTrue: [colVertices removeFirst].
			self closeVertex].
	self changed: #geometry.