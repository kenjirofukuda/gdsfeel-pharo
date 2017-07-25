utility
pointString: aPoint label1: label1 label2: label2
	^ String
		streamContents: [ :s | 
			s nextPutAll: label1.
			s nextPutAll: ': '.
			s nextPutAll: (aPoint x asString padLeftTo: 5).
			s nextPutAll: ', '.
			s nextPutAll: label2.
			s nextPutAll: ': '.
			s nextPutAll: (aPoint y asString padLeftTo: 5)]