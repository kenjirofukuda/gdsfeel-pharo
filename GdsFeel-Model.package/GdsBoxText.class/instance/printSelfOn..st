printing
printSelfOn: aStream
	aStream nextPut: $,.
	aStream nextPutAll: self contents.