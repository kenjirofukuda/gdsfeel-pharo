printing
printOn: aStream
	(code asString trimBoth padLeftTo: 4) printOn: aStream.
	aStream nextPut: $,.
	data printOn: aStream.
	