testing
canStrokePathCenter
	morph fastDrawing 
		ifTrue: [ ^ element width <= 0.0 ].
	^(element structure kinds atKey: 'PC') isVisible or: [self canStrokePathBoundary not]
	