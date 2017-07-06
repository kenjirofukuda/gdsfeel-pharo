debugging-use-only
nodeOfStructure: aGdsStructure
	^ self nodes detect: [ :node | node item == aGdsStructure ] ifNone: [  ]