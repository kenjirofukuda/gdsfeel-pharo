action
calcUpdateBounds
	| p1 p2 p3 p4 |
	p1 := nil.
	p2 := nil.
	replaceVertexIndex >=2 
		ifTrue: [p1 := self currentItem vertices at: (replaceVertexIndex - 1)].
	replaceVertexIndex <=  (self currentItem vertices size - 1)
		ifTrue: [p2 := self currentItem vertices at: (replaceVertexIndex + 1)].
	(self currentItem isBoundary and:[
		replaceVertexIndex = 1 or: [replaceVertexIndex = self currentItem vertices size]])
			ifTrue: [
				p1 := self currentItem vertices at: 2.
				p2 := self currentItem vertices at: (self currentItem vertices size - 1).].	 	
	p3 := referencePoint.
	p4 := moveToPoint.
	^GeometryUtils lookupDataBounds: ({ p1 . p2 . p3 . p4 } reject: [:each | each isNil]).

	
