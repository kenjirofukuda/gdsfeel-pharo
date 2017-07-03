tests
testLatestZipMemberName

	| exString |
	exString := String streamContents: [:s |
		s << self sampleStructure name.
		s << '\.structure\/'.
		s << self sampleStructure name.
		s << '\.(\d+)\.gdsfeelbeta']. 
	self assert: (self sampleStructure latestZipMemberName matchesRegex: exString).	
	self sampleStructure latestZipMemberName traceCr.