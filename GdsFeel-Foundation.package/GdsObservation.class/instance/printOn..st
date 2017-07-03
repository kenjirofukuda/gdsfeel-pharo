printing
printOn: aStream
	"Append a sequence of characters to aStream that identify the receiver."

	aStream nextPutAll: 'Obs('.
	aStream
		print: observer.
	aStream nextPutAll: ')'.
		