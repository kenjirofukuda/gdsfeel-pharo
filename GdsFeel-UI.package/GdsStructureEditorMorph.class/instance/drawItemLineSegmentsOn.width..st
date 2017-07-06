drawing-feedback
drawItemLineSegmentsOn: aLocalCanvas width: aWidth
	self model currentItem vertices
	 ifNotEmpty: [: points |
		self drawOn: aLocalCanvas polyLineVertices: points  width: aWidth]