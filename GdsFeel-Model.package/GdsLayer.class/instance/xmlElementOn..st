xml/json data exchange
xmlElementOn: aXmlElement
	| attrDict colorElmt |
	attrDict := Dictionary new.
	GdsColorUtils rgbaAttributesOn: attrDict color: self color. 
	self valueAsStringOn: attrDict.
	colorElmt := XMLElement name: 'color' attributes: attrDict.
	aXmlElement addNode: colorElmt.