printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	aStream nextPutAll: self libName.	
	aStream nextPut: $,.
	aStream nextPutAll: uuid asString.	
	aStream nextPut: $).
	