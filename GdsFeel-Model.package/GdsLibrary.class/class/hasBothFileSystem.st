testing
hasBothFileSystem
	^(Smalltalk hasClassNamed: #GdsLibraryFD) and: [Smalltalk hasClassNamed: #GdsLibraryFS].