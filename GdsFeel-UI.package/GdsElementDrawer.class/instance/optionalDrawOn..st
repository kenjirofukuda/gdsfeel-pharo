drawing
optionalDrawOn: aCanvas
	self canDisplayOrigin
		ifTrue: [self drawOriginOn: aCanvas].