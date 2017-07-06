rendering
strokePaintFor: aGdsElement on: aCanvas
	(aCanvas setStrokePaint: (self colorForElement: aGdsElement)) 
		width: (self lookupSolidPenWidth: aCanvas).
