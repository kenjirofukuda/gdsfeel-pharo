xml/json data exchange
xmlElementOn: aXmlElement
	| vertsElmt propset1 prop1 |
	vertsElmt := XMLElement named: 'vertices'.
	self vertices do: [ :xy | vertsElmt addNode: (self xyXmlElement: xy) ].
	aXmlElement addNode: vertsElmt.
	self properties keys ifEmpty: [ ^ self ].
	propset1 := XMLElement named: 'property-set1'.
	self properties
		keysAndValuesDo: [ :key :value | 
			prop1 := XMLElement
				name: 'property1'
				attributes:
					{('key' -> key asString).
					('value' -> value asString)}.
			propset1 addNode: prop1 ].
	aXmlElement addNode: propset1.
		