tests
testLatestContents
	self assert: (self sampleStructure latestContents notNil ).
	self assert: (self sampleStructure latestContents isString) .
	self assert: (self sampleStructure latestContents notEmpty) .
	self assert: (self sampleStructure latestContents beginsWith: '<?xml').
	self assert: (self sampleStructure latestContents endsWith: '</structure>').	