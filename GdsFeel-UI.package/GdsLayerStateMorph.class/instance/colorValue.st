accessing
colorValue
	model ifNil: [^self missingColor].
	^model color