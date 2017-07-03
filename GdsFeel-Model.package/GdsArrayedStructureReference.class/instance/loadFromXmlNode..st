objects from disk
loadFromXmlNode: aXMLNode
	super loadFromXmlNode: aXMLNode.
	aXMLNode elementsDo: [:node |
		node name = #ashape
			ifTrue: [
				ashape loadFromXmlNode: node].]

