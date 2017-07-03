drawing
drawOn: aCanvas
	super drawOn: aCanvas.
	aCanvas
		translateBy: self topLeft
		clippingTo: self clippingBounds
		during: [ :c | self drawLocalOn: c ]