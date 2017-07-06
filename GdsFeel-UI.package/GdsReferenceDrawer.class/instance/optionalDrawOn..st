drawing
optionalDrawOn: aCanvas
	super optionalDrawOn: aCanvas.
	self canDisplayExtent 
		ifTrue: [self drawExtentOn: aCanvas].