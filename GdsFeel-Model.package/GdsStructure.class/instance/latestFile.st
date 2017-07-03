accessing
latestFile
	self isOpen ifFalse: [ ^self error: 'illigal call. structure/library not open.' ].
	^self latestObject: self memberFiles getBasenameBlock: [ :f | f basename ]. 
