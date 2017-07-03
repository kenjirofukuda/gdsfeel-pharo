printing
labelStyleColonUppercased: aBoolean	
	^String streamContents: [:s |
		s nextPutAll: 
			(aBoolean
				ifTrue: [self propertyName asUppercase]
				ifFalse: [self propertyName]).
		s nextPut: $:.
		s nextPut: Character space.
		s nextPutAll: self getValue printString].