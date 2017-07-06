drawing
canStrokePathBoundaryWithKind
	^(self canStrokePathBoundary and: [(element structure kinds atKey: 'PB') isVisible])
	
	