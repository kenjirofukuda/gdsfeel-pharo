prompt message
moveToMessage
	^self moveTarget == #vertex 
		ifTrue: ['Point to Pull Vertex to:']
		ifFalse: ['Point to Stretch Edge To:'].