printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	(self mag closeTo: 1.0)
		ifFalse: [
			aStream print: self mag].
	(self angle closeTo: 0.0)
		ifFalse: [
			aStream print: self angle.
			aStream nextPut: $,].
	self isReflected
		ifTrue: [
			aStream nextPutAll: 'REFL'].
	aStream nextPut: $).
	