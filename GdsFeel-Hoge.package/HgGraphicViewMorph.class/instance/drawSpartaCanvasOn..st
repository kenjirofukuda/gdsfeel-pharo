drawing sparta
drawSpartaCanvasOn: aSpartaCanvas
	self showAxisLines
		ifTrue: [ self drawAxisSpartaCanvasOn: aSpartaCanvas ].
	self document
		ifNotNil: [ :doc | 
			doc graphics do: [ :each | each drawSpartaCanvasOn: aSpartaCanvas viewport: self viewport ].
			self showExtentBounds
				ifTrue: [ self drawExtentBoundsSpartaCanvasOn: aSpartaCanvas ] ]