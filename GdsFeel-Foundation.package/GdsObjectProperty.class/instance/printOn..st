printing
printOn: aStream
	aStream nextPutAll: 'property: '.
	aStream nextPutAll: self propertyName.
	aStream nextPut: $(.
	aStream nextPutAll: self getValue printString.
	aStream nextPut: $).
	