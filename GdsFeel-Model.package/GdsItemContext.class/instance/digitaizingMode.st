accessing
digitaizingMode
	digitaizingMode ifNil: [self digitaizingMode: #straight].
	^digitaizingMode
