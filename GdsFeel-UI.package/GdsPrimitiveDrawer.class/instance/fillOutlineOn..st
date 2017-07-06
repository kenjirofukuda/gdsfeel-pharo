drawing
fillOutlineOn: aCanvas 
	morph 
		penColor:  self elementFill
		during: [
			morph 
				drawOn: aCanvas
				fillPolyLineVertices: element dataOutlinePoints].
