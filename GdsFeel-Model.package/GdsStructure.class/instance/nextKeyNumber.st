key generator
nextKeyNumber
	| newValue |
	newValue := self maxKeyNumber + 1.
	maxKeyNumber := newValue.
	^newValue
	