testing
isLeaf
	^(self elements detect: [ :e | e isReference ] ifNone: [  ])
		isNil