as yet unclassified
findFilesOn: aPathOrDirectoryEntry
	| dirRef | 
	dirRef := aPathOrDirectoryEntry asFileReference.
	dirRef isDirectory 
		ifFalse: [^#()].
	^dirRef files select: [ :fileEntry | self isLibraryFile: fileEntry ].
