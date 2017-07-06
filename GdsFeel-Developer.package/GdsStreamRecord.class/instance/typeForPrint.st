printing
typeForPrint
	self isElementHeader ifTrue: [^self type].
	^self type asLowercase.
	
	