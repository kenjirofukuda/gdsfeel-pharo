rendering
renderOn: aCanvas
	|    |
	"aCanvas pathTransform scaleBy: (1@ -1)."
	"aCanvas drawShape: (aCanvas createPath: [ :pb | 
			pb moveTo: (-1 @ -1).
			pb lineTo: (1 @ 1).
		]).
	(aCanvas setStrokePaint: Color white)
		width: (self lookupSolidPenWidth: aCanvas)."
	self renderStructure: self structure on: aCanvas 
	