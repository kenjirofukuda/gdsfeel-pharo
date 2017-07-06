as yet unclassified
requiredOrder
	^typeOrder select: [:each | each first = #required] thenCollect: [:each | each second].