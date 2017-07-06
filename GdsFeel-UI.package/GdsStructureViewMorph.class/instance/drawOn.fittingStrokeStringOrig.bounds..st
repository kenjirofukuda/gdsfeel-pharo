drawing-world
drawOn: aCanvas fittingStrokeStringOrig: aObject bounds: aWorldBounds
	self 
		drawOn: aCanvas 
		fittingStrokeStringOrig: aObject 
		at: aWorldBounds origin 
		extent: aWorldBounds extent.