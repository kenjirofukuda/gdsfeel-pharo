xml/json data exchange
valueAsStringOn: aDictionary 
	aDictionary keysAndValuesDo: [ :key :value |
		(self isMultiValue: value)
			ifFalse: [ aDictionary at: key asString put: value asString ]].