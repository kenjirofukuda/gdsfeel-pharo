xml/json data exchange
xmlElementOn: aXmlElement
	self numbers do: [:num |
		aXmlElement addNode: (self atNumber: num) asXmlElement.].
