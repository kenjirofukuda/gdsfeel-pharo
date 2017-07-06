xml/json data exchange
attributesOn: aDictionary
	super attributesOn: aDictionary.
	aDictionary at: 'radius' put: self radius asString.
	