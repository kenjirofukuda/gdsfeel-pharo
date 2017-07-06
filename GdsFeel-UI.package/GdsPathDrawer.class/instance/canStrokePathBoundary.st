testing
canStrokePathBoundary
	| pixelSize |
	morph fastDrawing ifTrue: [ ^ element width > 0.0 ].
	element width <= 0.0 ifTrue: [ ^ false ].
	pixelSize := self pixelSize: element width.
	^ pixelSize >= 2.0