drawing
drawLocalOn: aCanvas
	self useNewCanvas
		ifFalse: [ self drawClasicCanvasOn: aCanvas ]
		ifTrue: [ self drawNewCanvasOn: aCanvas ]