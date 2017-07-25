drawing
drawClasicCanvasOn: aCanvas
	self showAxisLines
		ifTrue: [ self drawAxisOn: aCanvas ].
	self document
		ifNotNil: [ :doc | 
			doc graphics do: [ :each | each drawOn: aCanvas viewport: self viewport ].
			self showExtentBounds
				ifTrue: [ self drawExtentBoundsOn: aCanvas ] ]