xml/json data exchange
xmlElementOn: aXmlElement
	self liveElements do: [ :each | aXmlElement addNode: each asXmlElement ].
