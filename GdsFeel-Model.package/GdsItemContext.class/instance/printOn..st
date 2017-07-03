printing
printOn: aStream
	aStream nextPutAll: 'ITEM: '.
	aStream nextPutAll: itemNumber printString.