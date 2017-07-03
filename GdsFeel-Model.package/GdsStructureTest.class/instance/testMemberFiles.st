tests
testMemberFiles
	"self sampleStructure memberFiles explore"

	self
		assert:
			(self sampleStructure memberFiles
				allSatisfy: [ :each | 
					(each isKindOf: FileReference)
						and: [ each isFile and: [ each extension sameAs: 'gdsfeelbeta' ] ] ])