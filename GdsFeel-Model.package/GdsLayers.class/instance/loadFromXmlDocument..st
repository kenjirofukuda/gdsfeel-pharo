objects from disk
loadFromXmlDocument: aXMLDocument
	| topNode  layer layerNumber  |
	topNode := aXMLDocument findElementNamed: #layers.
	topNode
		elementsDo: [ :node |
			layerNumber := (node attributes at: 'gdsno') asInteger.
			layer := self atNumber: layerNumber.
			layer loadFromXmlNode: node]
