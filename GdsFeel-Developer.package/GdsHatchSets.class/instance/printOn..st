as yet unclassified
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	hatchMap keys do: [:key | 
		aStream nextPutAll: key.
		aStream nextPut: $, ].
	aStream skip: -1.
	aStream nextPut: $).	