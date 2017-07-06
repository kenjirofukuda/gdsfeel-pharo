testing-enabled
requestMagEnabled
	self structure ifNil: [^false].
	^self structure currentItem isReferenceType.