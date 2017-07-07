drawing sparta
drawSpartaCanvasOn: aSpartaCanvas
	self drawAxisSpartaCanvasOn: aSpartaCanvas.
	self document
		ifNotNil: [ :doc | 
			doc graphics do: [ :each | 
				each drawSpartaCanvasOn: aSpartaCanvas viewport: self viewport ] ]	
