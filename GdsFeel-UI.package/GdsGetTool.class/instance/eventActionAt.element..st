action
eventActionAt: aWorldPoint element: aGdsElement
	aGdsElement ifNotNil: [self currentItem get: aGdsElement ].
	GdsFeelMorphic debugFindElement 
		ifTrue: [
			aGdsElement ifNotNil: [(aGdsElement analisys: aWorldPoint) explore]].		