drawing
drawOn: aCanvas viewport: aViewport
	| hvPoint halfHandle halfPoint |
	hvPoint := aViewport xy2hv: self origin.
	halfHandle := self halfHandleSize asPoint.
	halfPoint := self pointDisplayHalfSize asPoint.
	self selected
		ifTrue: [ aCanvas fillRectangle: (self rectangleCenter: hvPoint handleHalfSize: halfHandle) color: self handleColor ].
	aCanvas frameOval: (hvPoint - halfPoint corner: hvPoint + halfPoint) color: self strokeColor