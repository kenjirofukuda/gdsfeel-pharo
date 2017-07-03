objects from disk
attributesOn: aDictionary
	super attributesOn: aDictionary.
	aDictionary at: 'string' put: self contents asString.
	aDictionary at: 'angle' put: self angle asString.	