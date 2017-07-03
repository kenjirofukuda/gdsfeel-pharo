as yet unclassified
printOn: aStream
	aStream nextPutAll: name asString.
	aStream nextPutAll: ': '.
	aStream nextPutAll: valueHolder printString.
	