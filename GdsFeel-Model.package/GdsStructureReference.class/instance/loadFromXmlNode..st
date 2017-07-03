objects from disk
loadFromXmlNode: aXmlNode
	super loadFromXmlNode: aXmlNode.
	self xy: self vertices first.
