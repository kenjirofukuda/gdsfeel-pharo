*GdsFeel-Model-ElementAddition
fileOutDxfNamed: aName
	| file |
	file := aName asFileReference.
	file
		writeStreamDo: [ :s | 
			| ws |
			ws := MultiByteFileStream newFrom: s.
			ws lineEndConvention: #lf.
			[self printDxfOn: ws] ensure: [ ws close ] ]