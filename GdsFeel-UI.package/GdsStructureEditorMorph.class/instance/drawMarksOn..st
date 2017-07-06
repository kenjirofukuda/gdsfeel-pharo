drawing-feedback
drawMarksOn: aLocalCanvas
	self 
		penColor: self visibleMarkerColor
		during: [
			self markerPoints do: [:each |
			self 
				drawOn: aLocalCanvas
				markDiamondPointAt: each ]]