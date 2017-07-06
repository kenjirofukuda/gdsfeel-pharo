prompt message
afterSecondMessage
	^self offsetOperation = #idCopyOffset: 
		ifTrue: [self copyToMessage]
		ifFalse: [self moveToMessage]. 