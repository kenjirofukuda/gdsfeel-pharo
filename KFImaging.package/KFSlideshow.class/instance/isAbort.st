testing
isAbort
	isAbortBlock 
		ifNotNil: [ | abort |
			abort := false.
			[abort := isAbortBlock value. ^abort] 
				on: Error do: [:ex | ^false]].
	^false.