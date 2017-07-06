testing
isAbsMag
	^self type = #STRANS and: [((self dataBytes at: 2) bitAnd: 16r02) ~= 0]