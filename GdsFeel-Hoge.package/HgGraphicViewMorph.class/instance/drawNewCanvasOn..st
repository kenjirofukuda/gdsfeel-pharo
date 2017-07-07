drawing
drawNewCanvasOn: aCanvas
	| newCanvas |
	newCanvas := MozCanvas extent: self innerBounds extent.
	self drawSpartaCanvasOn: newCanvas.
	newCanvas asForm .
	aCanvas drawImage: newCanvas asForm form at: 0 @ 0