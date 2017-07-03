accessing
removedElements
	^self elements select: [:each | each state = #inTrush].