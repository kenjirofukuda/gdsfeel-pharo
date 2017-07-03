accessing
elementType: aSymbol
	elementType = aSymbol ifTrue: [^self].
	elementType := aSymbol.
	self changed: #elementType.
	self changed: #boundaryActivated.
	self changed: #pathActivated.
	self changed: #srefActivated.	
	self changed: #arefActivated.	
	self changedPutGetDependent.
	self announceAttributeChanged: #elementType.