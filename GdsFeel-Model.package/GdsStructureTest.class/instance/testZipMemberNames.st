tests
testZipMemberNames
	self assert: (self sampleStructure zipMemberNames isCollection).
	
	self assert: ((self sampleStructure zipMemberNames) 
							allSatisfy: [ :name | name isString ]).
							
	self sampleStructure zipMemberNames traceCr.