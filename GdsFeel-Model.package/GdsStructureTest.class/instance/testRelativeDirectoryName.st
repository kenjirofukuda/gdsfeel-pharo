tests
testRelativeDirectoryName
	self sampleStructure relativeDirectoryName traceCr.
	self sampleLibrary zipArchiveDo: [ :zip | 
		self assert: (zip memberNames 
			includes: (self sampleStructure relativeDirectoryName, '/'))]