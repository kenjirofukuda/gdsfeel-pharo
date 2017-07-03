tests
testZipArchiveDo
	self zipArchiveDo: [:zip |
		(zip memberNamed: 'LIB.ini')
			contents traceCr.
		(zip memberNamed: 'layers.xml')
				contents traceCr.].
	