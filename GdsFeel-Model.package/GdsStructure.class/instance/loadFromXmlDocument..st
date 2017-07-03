objects from disk
loadFromXmlDocument: aXMLDocument
	| structureNode |
	structureNode := aXMLDocument findElementNamed: #structure.
	structureNode
		elementsDo: [ :node | 
			(GdsElement classForType: (node attributes at: 'type'))
				ifNotNil: [ :clazz | 
					| element success |
					success := true.
					element := clazz fromXmlNode: node.
					[ element fixGeometryError ]
						on: Error
						do: [ :ex | 
							success := false.
							ex traceCr.
							structureNode traceCr ].
					success
						ifTrue: [ self addElement: element ] ] ].
	self loadFromAttributes: structureNode attributes.
	self flushDirtyInfo
	"
	| doc contents |

	contents := String streamContents: [ :s |
		s << GdsStructure dtd.
		s << self sampleStructure latestContents].	
	doc := XMLDOMParser parse:  contents.
	createdString := ((XPath for: 'structure/@created') in: doc) first.
	modifiedString := ((XPath for: 'structure/@modified') in: doc) first.	
	elements := ((XPath for: 'structure/*') in: doc) collect: [:node | GdsElement2 fromXMLNode: node ]	
	"