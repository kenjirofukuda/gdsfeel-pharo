printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	aStream nextPutAll: property propertyName.
	self newValue
		ifNotNil: [
			aStream nextPut: $,.
			aStream nextPutAll: 'to: '.
			aStream nextPutAll: self newValue printString].
	self oldValue
		ifNotNil: [
			aStream nextPut: $,.
			aStream nextPutAll: 'from: '.
			aStream nextPutAll: self oldValue printString].
	aStream nextPut: $).
	