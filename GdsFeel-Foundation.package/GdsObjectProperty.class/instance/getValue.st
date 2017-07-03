accessing
getValue
	^propertyValue ifNil: [ propertyValue := initialValue.]
	
	