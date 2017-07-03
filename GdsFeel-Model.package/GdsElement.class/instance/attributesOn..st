xml/json data exchange
attributesOn: aDictionary
	aDictionary at: 'type' put: self type asString.
	self keyNumberFilled
		ifTrue: [ aDictionary at: 'keyNumber' put: self keyNumber ].
	self ownColor
		ifNotNil: [ :color | aDictionary at: 'ownColor' put: color asHexString ]