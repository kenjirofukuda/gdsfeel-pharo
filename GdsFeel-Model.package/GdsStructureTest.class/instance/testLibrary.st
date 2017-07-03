tests-initialize-release
testLibrary
	"library: only set once."
	self should:  [self sampleStructure library: self sampleLibrary] raise: Exception.
	