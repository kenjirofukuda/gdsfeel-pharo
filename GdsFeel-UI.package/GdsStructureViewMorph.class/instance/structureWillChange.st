initialization
structureWillChange
	self model ifNotNil: [self model layers removeDependent: self].