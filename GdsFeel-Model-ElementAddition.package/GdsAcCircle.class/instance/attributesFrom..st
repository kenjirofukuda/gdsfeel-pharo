objects from disk
attributesFrom: aDictionary
	super attributesFrom: aDictionary.
	self radius: (aDictionary at: 'radius' ifAbsent: [ 0 ]) asNumber. 
	