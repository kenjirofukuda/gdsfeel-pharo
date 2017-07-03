tests
testZipStructureNames
	self assert: (self sampleLibrary zipStructureNames isCollection).
	self sampleLibrary zipStructureNames
		ifNotEmpty: [ :names | 
			names allSatisfy: [ :name | 
				name isString and: [ 
				(name endsWith: '.structure') not ] ] ]