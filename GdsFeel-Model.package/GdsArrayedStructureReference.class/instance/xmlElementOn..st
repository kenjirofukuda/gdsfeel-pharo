xml/json data exchange
xmlElementOn: aXmlElement
	super xmlElementOn: aXmlElement.
	aXmlElement addNode: ashape asXmlElement.
	

