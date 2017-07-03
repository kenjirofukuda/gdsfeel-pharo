objects from disk
attributesFrom: aDictionary
	self columnCount: (aDictionary at: 'cols' ifAbsent: [ 1 ]) asInteger.
	self rowCount: (aDictionary at: 'rows' ifAbsent: [ 1 ]) asInteger.
	self xStep: (aDictionary at: 'column-spacing' ifAbsent: [ 0.0 ]) asNumber.
	self yStep: (aDictionary at: 'row-spacing' ifAbsent: [ 0.0 ]) asNumber