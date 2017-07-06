testing-enabled
getElementEnabled
	self structure ifNil: [^false].
	^self structure currentItem getEnabled.