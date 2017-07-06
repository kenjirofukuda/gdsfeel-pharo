action-pattern
evenOddAction
	self upCount.
	self canFinish ifTrue: [^self finish].	
	self clickCount = 1
		ifTrue: [self firstAction].
	self clickCount \\ 2 = 0
		ifTrue: [
			self evenAction.
			morph hideRubberbandLocationPanes.]
		ifFalse: [self oddAction].
