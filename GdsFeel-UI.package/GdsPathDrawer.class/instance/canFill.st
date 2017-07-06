testing
canFill
	| pixelSize |
	morph fastDrawing ifTrue: [ ^ false ].
	
	element width <= 0.0 ifTrue: [ ^ false ].
	pixelSize := self pixelSize: element width.
	^ pixelSize >= 3.0 and: [self canStrokePathBoundaryWithKind].