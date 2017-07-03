tests-initialize-release
testName
	self should:  [self sampleStructure name: 'sample illigal name'] raise: Exception.
	self assert: (self sampleStructure name isString).