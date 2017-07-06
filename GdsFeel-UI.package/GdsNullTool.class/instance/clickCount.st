accessing
clickCount
	clickCount ifNil: [clickCount := 0].
	^clickCount.