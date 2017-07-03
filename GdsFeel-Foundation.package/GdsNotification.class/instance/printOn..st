as yet unclassified
printOn: aStream
	super printOn: aStream.
	aStream nextPutAll: '('.
	name printOn: aStream.
	aStream nextPutAll: ','.
	object printOn: aStream.
	aStream nextPutAll: ','.
	userInfo printOn: aStream.
	aStream nextPutAll: ')'.	