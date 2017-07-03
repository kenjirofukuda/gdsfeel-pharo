printing
labelStyleParlenUppercased: aBoolean	
	^String streamContents: [:s |
		s nextPutAll: 
			(aBoolean
				ifTrue: [self propertyName asUppercase]
				ifFalse: [self propertyName]).
		s nextPut: $(.
		s nextPutAll: self getValue printString. 
		s nextPut: $). ].