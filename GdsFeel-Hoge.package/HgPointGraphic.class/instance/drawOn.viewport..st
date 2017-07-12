drawing
drawOn: aCanvas viewport: aViewport
	| hvPoint |
	hvPoint := aViewport xy2hv: self origin.
	self selected
		ifTrue:
			[ aCanvas fillRectangle: (hvPoint - (3 @ 3) corner: hvPoint + (3 @ 3)) color: Color blue ].
	aCanvas frameOval: (hvPoint - (2 @ 2) corner: hvPoint + (2 @ 2)) color: Color black