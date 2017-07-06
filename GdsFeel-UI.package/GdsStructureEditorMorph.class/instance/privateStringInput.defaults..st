utility
privateStringInput: aMessage defaults: aDefault
	|  reply  ok |
	ok := false.
	reply := ''.
	[ok]
		whileFalse: 
			[reply := UIManager default request: aMessage initialAnswer: aDefault.
			reply isEmptyOrNil ifTrue: [^''].
			ok := reply isString].
	^reply asByteString.