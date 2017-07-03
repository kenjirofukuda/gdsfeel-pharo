objects from disk
protectedLoadFromXmlNode: aXMLNode
	| col |
	self attributesFrom: aXMLNode attributes.
	col := OrderedCollection new.
	(aXMLNode findElementNamed: #vertices)
		elementsDo: [ :xyNode | 
			| words xy |
			words := xyNode stringNodes first string findTokens: ' '.
			xy := words first asNumber @ words last asNumber.
			col add: xy ].
	self assert: [ col isNotEmpty ].
	self vertices: col asArray.
	(aXMLNode findElementNamed: 'property-set1')
		ifNotNil: [ :elems | 
			elems
				elementsDo: [ :prop1node | 
					| keyString valueString |
					keyString := prop1node attributeAt: 'key'.
					valueString := prop1node attributeAt: 'value'.
					self setProperty: keyString toValue: valueString ] ]