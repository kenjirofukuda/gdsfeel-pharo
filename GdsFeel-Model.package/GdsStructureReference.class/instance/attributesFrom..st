objects from disk
attributesFrom: aDictionary
	super attributesFrom: aDictionary.
	self structureName: (aDictionary at: 'sname' ifAbsent: ['ERRREF']) asString.
	self angle: (aDictionary at: 'angle' ifAbsent: [0.0]) asNumber.
	self mag: (aDictionary at: 'mag' ifAbsent: [1.0]) asNumber.	
	self setReflected: ((aDictionary at: 'reflected' ifAbsent: [false]) asString sameAs: 'true').	
	