as yet unclassified
attributesFromDxfInsert: aDxfShape element: aGdsElement
	aGdsElement xy: aDxfShape centerX @ aDxfShape centerY.
	aGdsElement mag: (aDxfShape scaleX max: aDxfShape scaleY).
	aGdsElement angle: aDxfShape angleDegress.
	(aDxfShape rowCount + aDxfShape columnCount) > 2
		ifTrue: [ 
			aGdsElement rowCount: aDxfShape rowCount.
			aGdsElement columnCount: aDxfShape columnCount.
			aGdsElement yStep: aDxfShape rowSpacing.
			aGdsElement xStep: aDxfShape columnSpacing.].