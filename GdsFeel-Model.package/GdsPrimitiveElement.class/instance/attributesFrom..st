objects from disk
attributesFrom: aDictionary
	self datatype: (aDictionary at: 'datatype' ifAbsent: [ self missingDataTypeNumber ]) asNumber.
	self
		layerNumber:
			(aDictionary
				at: 'layerNumber'
				ifAbsent: [ aDictionary at: 'layer' ifAbsent: [ self missingLayerNumber ] ]) asInteger.
	super attributesFrom: aDictionary