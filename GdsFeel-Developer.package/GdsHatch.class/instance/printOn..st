printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
		aStream nextPutAll: self name.
		aStream nextPut: $, .
		aStream nextPutAll: (self angle asString, ' DEG').
		self linesPerScreen = self defaultLinesPerScreen 
			ifFalse: [
				aStream nextPut: $, .
				aStream nextPutAll: (self linesPerScreen asString)].
	aStream nextPut: $).		