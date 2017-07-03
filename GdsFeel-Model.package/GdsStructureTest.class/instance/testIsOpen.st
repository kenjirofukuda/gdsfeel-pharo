tests
testIsOpen

	self 
		assert: self sampleLibrary isOpen 
		equals: (self sampleLibrary structures allSatisfy: [ :s | s isOpen ]). 
