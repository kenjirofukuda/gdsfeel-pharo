key generator
maxKeyNumber
	maxKeyNumber ifNil: [maxKeyNumber := self lookupMaxKeyNumber].
	^maxKeyNumber
	
	