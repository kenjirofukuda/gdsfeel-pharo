tests
testRevisonOfName
	self assert: 1 equals: (self sampleStructure revisonOfName: 'AIUEO1.1.gdsfeelbeta').
	self assert: 99 equals: (self sampleStructure revisonOfName: 'AIUEO1.99.gdsfeelbeta').
	
	"only positive number"
	self assert: (self sampleStructure revisonOfName: 'AIUEO1.-1.gdsfeelbeta') < 0.	
	
	"must gdsfeelbeta"
	self assert: (self sampleStructure revisonOfName: 'AIUEO1.1.gdsfeel') < 0.	

	"format error"
	self assert: (self sampleStructure revisonOfName: '..1.gdsfeelbeta') < 0.		