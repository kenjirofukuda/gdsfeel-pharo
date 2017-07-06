drawing
drawOn: aCanvas viewport: aViewport
	| hvPoint |
	hvPoint := aViewport xy2hv: self origin.
	aCanvas frameOval: (hvPoint - (2 @ 2) corner: hvPoint + (2 @ 2)) color: Color black.