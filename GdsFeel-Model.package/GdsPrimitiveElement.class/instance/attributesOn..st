objects from disk
attributesOn: aDictionary
	self datatype ~= self missingDataTypeNumber
		ifTrue: [ aDictionary at: 'datatype' put: self datatype ].
	aDictionary at: 'layerNumber' put: self layerNumber.
	super attributesOn: aDictionary