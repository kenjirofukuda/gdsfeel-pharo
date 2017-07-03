tests
testExtractDirectory
	self assert: (self sampleLibrary extractDirectory isKindOf: FileReference).

	self assert: (self sampleLibrary extractDirectory base 
							sameAs: self sampleLibrary name).

	self sampleLibrary extractDirectory exists
		ifTrue: [ self assert: self sampleLibrary extractDirectory isDirectory  ]