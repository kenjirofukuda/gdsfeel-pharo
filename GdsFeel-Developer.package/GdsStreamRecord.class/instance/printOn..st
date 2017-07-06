printing
printOn: aStream
	aStream nextPutAll: self typeForPrint.
	self hasData ifFalse: [^self].
	aStream nextPut: $(.
	self representOn: aStream.
	aStream nextPut: $).
	