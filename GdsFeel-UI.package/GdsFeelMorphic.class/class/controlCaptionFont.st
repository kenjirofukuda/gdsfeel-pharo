as yet unclassified
controlCaptionFont
	| textStyle |
	textStyle := TextStyle named: GdsFeelMorphic controlCaptionFontName  .
	textStyle ifNil: [textStyle := TextStyle default].
	^textStyle fontOfPointSize: GdsFeelMorphic controlCaptionFontSize.
