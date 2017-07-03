debug
ifDebug: aBlock
	self debugConsoleOut ifFalse: [^self].
	aBlock value.
	
	