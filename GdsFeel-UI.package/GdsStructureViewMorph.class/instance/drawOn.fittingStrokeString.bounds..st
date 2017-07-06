drawing-world
drawOn: aCanvas fittingStrokeString: aObject bounds: aWorldBounds
	self 
		drawOn: aCanvas 
		fittingStrokeString: aObject 
		at: aWorldBounds origin 
		extent: aWorldBounds extent.