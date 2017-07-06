accessing
apiWidth
	transform ifNil: [^borderWidth].
	 transform a11 isZero ifTrue: [^borderWidth].
	isPixelWidth ifTrue: [^(borderWidth / transform a11) rounded].
	^borderWidth	