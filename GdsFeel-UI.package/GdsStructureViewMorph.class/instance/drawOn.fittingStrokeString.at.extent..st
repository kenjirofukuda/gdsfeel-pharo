drawing-world
drawOn: aCanvas fittingStrokeString: aObject at: aWorldPoint extent: aWorldExtent
	self 
		drawOn: aCanvas 
		fittingString: aObject 
		at: aWorldPoint 
		extent: aWorldExtent 
		pointsBlock: [:ptArray |
			self drawOn: aCanvas polyLineVertices: ptArray].
	