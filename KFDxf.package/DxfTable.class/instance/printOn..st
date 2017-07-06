printing
printOn: aStream
	super printOn: aStream.
	self name ifNil: [ ^ self ].
	aStream nextPut: $(.
	self name printOn: aStream.
	aStream nextPut: $).
	