xml/json data exchange
attributesOn: aDictionary 
	"override hear"
	aDictionary at: 'name' put: self libName.

	aDictionary at: 'lastModified' put: self lastModified.
	aDictionary at: 'lastAccessed' put: self lastAccessed.

	aDictionary at: 'unitString' put: self unitString.
	aDictionary at: 'databaseUnit' put: self databaseUnit.
	aDictionary at: 'meterUnit' put: self meterUnit.
	