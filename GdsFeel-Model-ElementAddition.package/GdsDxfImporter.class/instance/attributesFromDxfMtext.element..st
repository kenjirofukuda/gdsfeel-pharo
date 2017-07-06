as yet unclassified
attributesFromDxfMtext: aDxfShape element: aGdsElement
	"aGdsElement 
		vertices: (
			Array 
				with: (aDxfShape firstX @ aDxfShape firstY) 
				with: ((aDxfShape firstX + aDxfShape width) @ aDxfShape firstY + aDxfShape height)) ."
	aGdsElement 
		vertices: (
			Array 
				with: (aDxfShape firstX @ aDxfShape firstY) 
				with: ((aDxfShape firstX + (aDxfShape height * aDxfShape text size)) @ aDxfShape firstY + aDxfShape height)) .
	aGdsElement contents: aDxfShape text.
	aGdsElement angle: aDxfShape angleDegress.
