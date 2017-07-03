as yet unclassified
lookupDataBounds: vertices
	| minX minY maxX maxY |
	minX := SmallInteger maxVal.
	minY := SmallInteger maxVal.
	maxX := SmallInteger minVal.
	maxY := SmallInteger minVal.
	vertices do: 
		[ :p | 
		minX := minX min: p x.
		minY := minY min: p y.
		maxX := maxX max: p x.
		maxY := maxY max: p y ].
	^ minX @ minY corner: maxX @ maxY