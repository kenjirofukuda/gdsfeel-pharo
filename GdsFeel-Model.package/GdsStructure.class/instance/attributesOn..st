printing
attributesOn: aDictionary
	aDictionary at: 'name' put: self name.
	aDictionary at: 'created' put: self timeCreated printString.
	aDictionary at: 'modified' put: self timeModified printString.
	