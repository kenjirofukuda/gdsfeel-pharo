tests
testLatestFile
	self sampleLibrary isOpen
		ifFalse: [
			self sampleLibrary extract].
	self sampleStructure latestFile traceCr.
	self assert: self sampleStructure latestFile notNil. 
	self assert: (self sampleStructure latestFile isKindOf: FileReference). 
	self assert: self sampleStructure latestFile isFile. 
