as yet unclassified
downloadUrl: aUrl toFileNamed: aFullPath
	| data |
	data := nil.
	data := aUrl asUrl retrieveContents.
	data ifNil: [^self].
	StandardFileStream 
		forceNewFileNamed: aFullPath 
		do: [:newStream |
			newStream binary.
			newStream nextPutAll: data].
