action-pattern
firstAndSecondAction
	self upCount.
	self canFinish ifTrue: [^self finish].	
	self clickCount = 1
		ifTrue: [self firstAction]
		ifFalse: [self afterSecondAction].
