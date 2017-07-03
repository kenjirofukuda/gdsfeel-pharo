accessing
refStructure
	refStructure ifNil: [
		refStructure := self structure library structureNamed: self structureName.].
	^refStructure