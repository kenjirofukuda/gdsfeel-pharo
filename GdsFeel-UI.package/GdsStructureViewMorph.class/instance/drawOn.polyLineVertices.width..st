drawing-world
drawOn: aCanvas polyLineVertices: aPointArray width: aWidth
	| p1 p2 |
	aPointArray ifEmpty: [^self].
	1 to: aPointArray size - 1 do: [:index |
		p1 := aPointArray at: index.
		p2 := aPointArray at: index + 1.
		self drawOn: aCanvas lineFrom: p1 to: p2 width: aWidth .].
	
	