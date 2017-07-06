testing
isReflected
	^self type = #STRANS and: [((self dataBytes at: 1) bitAnd: 16r80)  ~= 0]