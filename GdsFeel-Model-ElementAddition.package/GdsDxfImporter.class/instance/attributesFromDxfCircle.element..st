as yet unclassified
attributesFromDxfCircle: aDxfShape element: aGdsElement
	self attributesFromDxfPoint: aDxfShape element: aGdsElement.
	aGdsElement radius: aDxfShape radius.
	
