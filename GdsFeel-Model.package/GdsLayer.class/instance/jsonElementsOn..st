xml/json data exchange
jsonElementsOn: aDictionary
	| map |
	map := Dictionary new.
	GdsColorUtils rgbaAttributesOn: map color: self color.
	aDictionary at: 'color' put: map.