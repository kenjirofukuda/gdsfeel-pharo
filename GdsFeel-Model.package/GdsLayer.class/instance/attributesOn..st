xml/json data exchange
attributesOn: aDictionary
	super attributesOn: aDictionary.
	aDictionary at: 'gdsno' put: self layerNumber.	
	aDictionary at: 'name' put: self name.	
