utility
privateByteStringInput: aMessage defaults: aDefault
	|  reply  ok |
	ok := false.
	reply := ''.
	[ok]
		whileFalse: 
			[reply := UIManager default request: aMessage initialAnswer: aDefault.
			reply isEmptyOrNil ifTrue: [^''].
			ok := reply isByteString].
	^reply asByteString.