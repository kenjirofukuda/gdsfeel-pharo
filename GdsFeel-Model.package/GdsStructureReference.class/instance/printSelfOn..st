printing
printSelfOn: aStream
	sname ifNil: [^self].
	aStream nextPut: $,.
	aStream nextPutAll: self structureName