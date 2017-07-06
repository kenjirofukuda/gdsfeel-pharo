drawing
drawFeedbackOn: aLocalCanvas
	analisysResult ifNil: [^self].
	({ referencePoint . moveToPoint } reject: [:each | each isNil])
		do: [:each | morph drawOn: aLocalCanvas markDiamondPointAt: each].