utility
pointString: aPoint label1: label1 label2: label2 decimalPlaces: anInteger
	^ String
		streamContents: [ :s | 
			s nextPutAll: label1.
			s nextPutAll: ': '.
			s nextPutAll: (aPoint x printShowingDecimalPlaces: anInteger).
			s nextPutAll: ', '.
			s nextPutAll: label2.
			s nextPutAll: ': '.
			s nextPutAll: (aPoint y printShowingDecimalPlaces: anInteger) ]