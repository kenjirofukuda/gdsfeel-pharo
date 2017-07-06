as yet unclassified
printOn: aStream
	super printOn: aStream. 
	aStream nextPut:$(. 
	self isVLine ifTrue: [ aStream << 'V' ].
	self isHLine ifTrue: [ aStream << 'H' ].	
	aStream nextPut: $).