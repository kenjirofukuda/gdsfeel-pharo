xml/json data exchange
attributesOn: aDictionary
	self columnCount >= 2
		ifTrue: [ aDictionary at: 'cols' put: self columnCount ].
	self rowCount >= 2
		ifTrue: [ aDictionary at: 'rows' put: self rowCount ].
	(self xStep closeTo: 0.0)
		ifFalse: [ aDictionary at: 'column-spacing' put: self xStep ].
	(self yStep closeTo: 0.0)
		ifFalse: [ aDictionary at: 'row-spacing' put: self yStep ]