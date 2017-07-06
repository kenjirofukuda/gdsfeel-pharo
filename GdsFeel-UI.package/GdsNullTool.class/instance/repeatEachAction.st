action-pattern
repeatEachAction
	self upCount.
	self canFinish ifTrue: [^self finish].	
	self eachAction.
	self canFinish ifTrue: [^self finish].	
