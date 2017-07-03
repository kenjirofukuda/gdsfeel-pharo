objects from disk
attributesFrom: aDictionary
	self width: (aDictionary at: 'width' ifAbsent: [ self missingWidthNumber ]) asNumber.
	self pathtype: (aDictionary at: 'pathtype' ifAbsent: [ self missingPathTypeNumber ]) asNumber.
	super attributesFrom: aDictionary