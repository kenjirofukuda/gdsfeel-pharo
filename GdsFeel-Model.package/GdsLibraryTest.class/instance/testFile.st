tests-accessing
testFile
	self assert: (self sampleLibrary file isKindOf: FileReference).
