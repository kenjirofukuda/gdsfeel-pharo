check
checkType: aCollection
	super checkType: aCollection.
	(aCollection
		detect: [ :v | (v isKindOf: elementType) not ]
		ifNone: [  ])
		ifNotNil: [ :found | 
			^ self
				error: found printString , ' not kind of: ' , elementType asString ]