drawing
drawLocalIgnoreItemOn: aLocalCanvas elements: aElements
	self 
		drawLocalIgnoreItemOn: aLocalCanvas 
		elements:  aElements 
		drawBlock: [:canvas :element |
			self drawOn: canvas element: element] 