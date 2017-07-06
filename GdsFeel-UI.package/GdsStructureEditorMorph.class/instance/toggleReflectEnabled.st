testing-enabled
toggleReflectEnabled
	self structure ifNil: [^false].
	^self structure currentItem isReferenceType.