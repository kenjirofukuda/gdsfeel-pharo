objects from disk
attributesOn: aDictionary
	self width ~= self missingWidthNumber
		ifTrue: [ aDictionary at: 'width' put: self width ].
	self pathtype ~= self missingPathTypeNumber
		ifTrue: [ aDictionary at: 'pathtype' put: self pathtype ].
	super attributesOn: aDictionary