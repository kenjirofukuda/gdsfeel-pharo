rendering
strokeBoxtext: aGdsElement on: aCanvas
	| font scale savedPaint |
	(self canDisplayKindForKey: 'TX' element: aGdsElement)
		ifFalse: [ ^ self ].
	aCanvas pathTransform
		restoreAfter: [ 
			savedPaint := aCanvas paint.
			font := TextStyle defaultFont realFont.
			scale := aGdsElement dataBounds height / font pixelSize.
			aCanvas setFont: font.
			aCanvas pathTransform translateX: aGdsElement xy x Y: aGdsElement xy y.
			aCanvas pathTransform scaleBy: scale @ scale negated.
			aCanvas setPaint: (self colorForElement: aGdsElement).
			aCanvas drawString: 'abc'.
			"aCanvas drawString: ([aGdsElement contents asString] on: Error do: [:ex | ex return: 'abc'])."
			savedPaint ifNotNil: [ aCanvas setPaint: savedPaint ]
			 ]	