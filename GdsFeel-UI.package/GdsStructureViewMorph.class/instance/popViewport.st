viewport
popViewport
	| result |
	result := self portStack last. 
	 portStack := portStack allButLast.
	^result.