objects from disk
deleteExtracted
	self extractDirectory isDirectory
		ifTrue: [ self extractDirectory deleteAll ]