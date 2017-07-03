command-handler
assertNilDependent
	self assert: [(self dependents includes: nil) not].
	