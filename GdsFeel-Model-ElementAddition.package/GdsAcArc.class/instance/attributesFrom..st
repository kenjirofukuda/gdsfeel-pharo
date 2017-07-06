objects from disk
attributesFrom: aDictionary
	super attributesFrom: aDictionary.
	self startAngleDegress: (aDictionary at: 'startAngle' ifAbsent: [0]) asNumber.
	self endAngleDegress: (aDictionary at: 'endAngle' ifAbsent: [0]) asNumber.	