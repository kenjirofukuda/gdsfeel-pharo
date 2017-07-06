testing
canFinish
	^((self currentItem putEnabled) and: [(self currentItem vertices last) = self snapedWorldPoint2])
