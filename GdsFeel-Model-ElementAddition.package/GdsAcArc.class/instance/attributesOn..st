xml/json data exchange
attributesOn: aDictionary
	super attributesOn: aDictionary.
	aDictionary at: 'startAngle' put: self startAngleDegress asString.
	aDictionary at: 'endAngle' put: self endAngleDegress asString.	