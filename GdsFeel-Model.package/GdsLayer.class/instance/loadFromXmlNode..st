objects from disk
loadFromXmlNode: aXMLNode
	self attributesFrom: aXMLNode attributes.
	aXMLNode
		elementsDo: [:colorNode |
			self color: (GdsColorUtils  fromAttributes:  colorNode attributes)].
		
	