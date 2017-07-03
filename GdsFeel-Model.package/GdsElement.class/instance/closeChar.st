printing
closeChar
	self statusNumber = -1 ifTrue: [ ^ $> ].
	^ $)
	