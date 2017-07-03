objects from disk
makeFolder
	self extractDirectory
		ifNotNil: [ :dir | 
			dir ensureCreateDirectory.
			dir / self class libInfoFileName
				writeStreamDo: [ :s | self libInfoAsIniOn: s ] ]