as yet unclassified
computeTransform: aMorphicBounds ttBounds: aDescriptionBounds ttBorderWidth: aTTwidth 
	"WARNING: aTTborderWidth is not a final pixel width"
	"import from TTSampleStringMorph's  computeTransform"
	| cy transform |
	aDescriptionBounds extent isZero
		ifTrue: [ ^ MatrixTransform2x3 identity ].
	cy := (aMorphicBounds origin y + aMorphicBounds corner y) * 0.5.
	transform := MatrixTransform2x3 
		transformFromLocal: (aDescriptionBounds insetBy: aTTwidth negated)
		toGlobal: aMorphicBounds.
	transform := transform composedWithGlobal: (MatrixTransform2x3 withOffset: 0 @ cy negated).
	transform := transform composedWithGlobal: (MatrixTransform2x3 withScale: 1.0 @ -1.0).
	transform := transform composedWithGlobal: (MatrixTransform2x3 withOffset: 0 @ cy).
	^ transform