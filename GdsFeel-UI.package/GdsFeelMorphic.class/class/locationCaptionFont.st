as yet unclassified
locationCaptionFont
	| textStyle |
	textStyle := TextStyle named: self smallUIFontName.
	textStyle ifNil: [textStyle := TextStyle default].
	^textStyle fontOfPointSize: (Display height <= 600 ifTrue: [9] ifFalse: [12]).