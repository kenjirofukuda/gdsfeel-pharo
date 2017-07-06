testing-enabled
requestAngleEnabled
	self structure ifNil: [^false].
	^self structure currentItem isReferenceType.