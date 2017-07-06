as yet unclassified
letter
	self symbol = #solid ifTrue: [^$-].
	self symbol = #brokn ifTrue: [^$!].
	self symbol = #dashed ifTrue: [^$|].
	self symbol = #doted ifTrue: [^$:].
	^$E "error symbol"
	