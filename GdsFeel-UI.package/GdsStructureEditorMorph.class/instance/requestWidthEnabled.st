testing-enabled
requestWidthEnabled
	self structure ifNil: [^false].
	^self structure currentItem widthEnabled.