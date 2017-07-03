accessing
current: aZeroBasedIndex
	zeroBasedIndex := aZeroBasedIndex.
	self changed: #current.
	^self current.
	
	