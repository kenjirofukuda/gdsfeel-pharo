drawing
drawBorderOn: aCanvas
	self pushedPort: [
		morph penColor: morph visiblePenColor during: [
			|points|
			"points := element dataOutlinePoints."
			points :=  GeometryUtils verticesFromBounds: element refStructure dataExtentForElements..
			self strokeVerticesOn: aCanvas points: points.]].