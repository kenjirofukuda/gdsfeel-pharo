objects from disk
attributesFrom: aDictionary
	super attributesFrom: aDictionary.
	self contents: (aDictionary at: 'string' ifAbsent: ['UNTITLED']) asString.
	self angle: (aDictionary at: 'angle' ifAbsent: ['0.0']) asNumber	