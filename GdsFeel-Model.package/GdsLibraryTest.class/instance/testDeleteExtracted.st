tests
testDeleteExtracted
	self sampleLibrary extractDirectory isDirectory
		ifTrue: [
			self sampleLibrary deleteExtracted.
			self assert: self sampleLibrary extractDirectory exists not]
		ifFalse: [self error: ' not extracted'].