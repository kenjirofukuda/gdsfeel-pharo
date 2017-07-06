appearance
visibleLocationColor
	|test |
	test := self backgroundColor luminance < 0.7.
	(GdsFeelMorphic borderedSensorDisplay)
		ifTrue: [test := test not].
	^test ifTrue: [Color white] ifFalse: [Color black]