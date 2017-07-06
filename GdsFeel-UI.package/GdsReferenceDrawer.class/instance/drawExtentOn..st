drawing
drawExtentOn: aCanvas
	morph penColor: morph visiblePenColor during: [
		self strokeVerticesOn: aCanvas points: element dataOutlinePoints.]