testing-enabled
ceEnabled
	self structure ifNil: [^false].
	self currentTool currentItem elementClass ifNil: [^false].
	((self currentTool currentItem isReferenceType) and: [self currentTool currentItem structureName isEmpty])
		ifTrue: [^false].
	^ true"self getElementEnabled."