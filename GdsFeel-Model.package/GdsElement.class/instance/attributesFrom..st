xml/json data exchange
attributesFrom: aDictionary
	| key |
	key := aDictionary at: 'keyNumber' ifAbsent: [ nil ].
	key ifNotNil: [ keyNumber := key asInteger ].
	(aDictionary at: 'ownColor' ifAbsent: [ nil ])
		ifNotNil: [ :colorString | self ownColor: (Color fromString: colorString) ]