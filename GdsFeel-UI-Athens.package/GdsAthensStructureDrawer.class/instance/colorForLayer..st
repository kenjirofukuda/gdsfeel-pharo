drawing
colorForLayer: aLayerNumber
	| usingColor |
	usingColor := (self structure layers atNumber: aLayerNumber) color.
	(usingColor = Color white) ifTrue: [^self visiblePenColor].
	(usingColor = #white) ifTrue: [^self visiblePenColor].
	^usingColor.