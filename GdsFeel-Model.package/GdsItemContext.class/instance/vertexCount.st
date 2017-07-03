accessing-points
vertexCount
	(self isBoundary and: [self vertices size > 1])
		ifTrue: [
			self vertices first = self vertices last
				ifTrue: [^self vertices size - 1]].
	^self vertices size