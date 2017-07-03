accessing
atNumber: aZeroBasedItemIndex
	^items detect: [:each | each number = aZeroBasedItemIndex] ifNone:[]
	