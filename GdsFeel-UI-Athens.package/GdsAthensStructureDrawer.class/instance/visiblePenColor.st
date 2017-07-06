appearance
visiblePenColor
	^self backgroundColor luminance > 0.7
		ifTrue: [Color black] ifFalse: [Color lightGray]