printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	self item printOn: aStream.
	aStream nextPut: $,.
	aStream nextPutAll: attribute printString.
	self oldValue
		ifNotNil: [
			aStream nextPut: $,.
			aStream nextPutAll: 'from: '.
			aStream nextPutAll: self oldValue printString].
	self newValue
		ifNotNil: [
			aStream nextPut: $,.
			aStream nextPutAll: 'to: '.
			aStream nextPutAll: self newValue printString].
	aStream nextPut: $).
	