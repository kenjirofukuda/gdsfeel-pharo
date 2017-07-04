drawing
drawLocalOn: aCanvas
	self drawAxisOn: aCanvas.
	self document
		ifNotNil: [ :doc | 
			doc graphics
				do:
					[ :each | each drawOn: aCanvas viewport: self viewport ] ]