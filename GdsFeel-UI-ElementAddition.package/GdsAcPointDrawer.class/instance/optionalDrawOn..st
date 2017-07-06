drawing
optionalDrawOn: aCanvas
	super optionalDrawOn: aCanvas.
	self canDisplayPointLocation
		ifTrue: [self drawPointLocationOn: aCanvas].