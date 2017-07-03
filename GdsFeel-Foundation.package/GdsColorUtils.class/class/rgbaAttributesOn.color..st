as yet unclassified
rgbaAttributesOn: aDictionary color: aColor
	aDictionary at: 'r' put: aColor red.
	aDictionary at: 'g' put: aColor green.
	aDictionary at: 'b' put: aColor blue.
	(aColor alpha closeTo: 1.0)
		ifFalse: [
			aDictionary at: 'a' put: aColor alpha].
	 