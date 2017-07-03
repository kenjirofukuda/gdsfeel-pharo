xml/json data exchange
asXmlElement
	| elmt attrDict |
	attrDict := Dictionary new.
	self xmlAttributesOn: attrDict.
	elmt := XMLElement name: self topElementName attributes: attrDict.
	self xmlElementOn: elmt.
	^elmt.
