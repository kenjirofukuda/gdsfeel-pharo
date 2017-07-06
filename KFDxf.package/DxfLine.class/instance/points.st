accessing
points
	^ Array streamContents: [ :s |
		s nextPut: (self startX @ self startY).
		s nextPut: (self endX @ self endY).
		 ]