testing
isAbsAngle
	^self type = #STRANS and: [((self dataBytes at: 2) bitAnd: 16r01)  ~= 0]