check
oldValue
	^propertyValue ifNil: [ propertyValue := initialValue ]
	