service
saveLibrary
	library ifNil: [^self].
	(GdsLibrary exists: library libName)
		ifTrue: [^self inform: 'Already exist.'].
	self saveLibraryWithArchive: true.