drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	aCanvas
		translateBy: self innerBounds origin
		clippingTo: self innerBounds
		during: [ :offsetCanvas | 
			drawOnBlock
				ifNotNil: [ 
					[ drawOnBlock value: offsetCanvas value: self ]
						on: Error
						do: [ :ex | 
							"nop"
							 ] ]
				ifNil: [ self drawLocalOn: offsetCanvas ] ]