as yet unclassified
fromXmlNode: aXMLNode
	^ self basicNew 
		initialize; 
		loadFromXmlNode: aXMLNode;
		yourself