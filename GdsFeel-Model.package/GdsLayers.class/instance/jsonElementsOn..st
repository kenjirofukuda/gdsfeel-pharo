xml/json data exchange
jsonElementsOn: aDictionary
	"override. own elements"
	| map | 
	map := Dictionary new.
	layers keysAndValuesDo: [ :key :value |
		map at: key asString put: value.
		].
	aDictionary at: 'layers' put: map.
	