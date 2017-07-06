testing
canFinish
	self currentItem holdsElement ifFalse: [^true].
	^((self currentItem putEnabled) and: [lastPoint = self snapedWorldPoint2])
