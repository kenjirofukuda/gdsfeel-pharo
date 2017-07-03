objects from disk
attributesFrom: aDictionary
	super attributesFrom: aDictionary.
	self layerNumber: (aDictionary at: 'gdsno') asInteger.	
	self name: (aDictionary at: 'name'). 
