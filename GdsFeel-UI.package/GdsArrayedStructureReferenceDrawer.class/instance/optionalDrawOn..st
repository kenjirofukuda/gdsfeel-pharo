drawing
optionalDrawOn: aCanvas
	super optionalDrawOn: aCanvas.
	self canDisplayBorder 
		ifTrue: [self drawBorderOn: aCanvas]
		