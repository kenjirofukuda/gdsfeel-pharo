testing
widthEnabled
	self elementClass ifNil: [^false].
	^self elementClass hasWidth.