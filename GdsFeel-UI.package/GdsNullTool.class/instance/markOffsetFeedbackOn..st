drawing
markOffsetFeedbackOn: aLocalCanvas
	self clickCount = 0 ifTrue: [^self].
	referencePoint  ifNotNil: [morph drawOn: aLocalCanvas markDiamondPointAt: referencePoint].
	self clickCount >= 2 ifTrue: [.
		lastPoint ifNotNil: [morph drawOn: aLocalCanvas markDiamondPointAt: lastPoint].].