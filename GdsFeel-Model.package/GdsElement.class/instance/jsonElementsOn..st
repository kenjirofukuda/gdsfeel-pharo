xml/json data exchange
jsonElementsOn: aDictionary
	aDictionary at: 'vertices' put: (self vertices collect: [: p | {p x . p y }]).
