printing
printOn: aStream
	aStream nextPutAll: self typeString.
	aStream nextPut: self openChar.
	keyNumber ifNotNil: [
		aStream nextPutAll: keyNumber asString].
	self printSelfOn: aStream.
	aStream nextPut: self closeChar.
	