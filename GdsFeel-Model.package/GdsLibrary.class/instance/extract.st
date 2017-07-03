as yet unclassified
extract
	self extractDirectory isDirectory ifTrue: [ self error: 'Already Extracted' ].
	self zipArchiveDo: [ :zip |
		zip extractAllTo: self extractDirectory ]