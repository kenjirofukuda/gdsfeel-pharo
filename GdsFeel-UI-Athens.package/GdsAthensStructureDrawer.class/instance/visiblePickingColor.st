appearance
visiblePickingColor
	^self backgroundColor luminance > 0.7
		ifTrue: [Color darkGray ] ifFalse: [Color white]