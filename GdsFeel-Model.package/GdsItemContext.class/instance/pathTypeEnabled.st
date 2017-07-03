testing
pathTypeEnabled
	self elementClass ifNil: [^false].
	^self elementClass = GdsPath.