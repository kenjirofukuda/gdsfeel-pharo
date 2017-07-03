tests
testName
	"name is whtout extension"
	self assert: false equals: (self sampleLibrary name endsWith: '.DB')