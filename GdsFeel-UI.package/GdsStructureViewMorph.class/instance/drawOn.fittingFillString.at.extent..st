drawing-world
drawOn: aCanvas fittingFillString: aObject at: aWorldPoint extent: aWorldExtent
	self 
		drawOn: aCanvas 
		fittingString: aObject 
		at: aWorldPoint 
		extent: aWorldExtent 
		pointsBlock: [:ptArray |
			self drawOn: aCanvas fillPolyLineVertices: ptArray].
	