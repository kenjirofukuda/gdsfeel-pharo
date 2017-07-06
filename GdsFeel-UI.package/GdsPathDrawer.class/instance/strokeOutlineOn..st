drawing
strokeOutlineOn: aCanvas
	(self canStrokePathBoundaryWithKind)
		ifTrue: [self strokePathBoundaryOn: aCanvas].		
	(self canStrokePathCenter)
		ifTrue: [self strokePathCenterOn: aCanvas].
	
	