accessing
digitaizingMode: aSymbol
	digitaizingMode = aSymbol ifTrue: [^self].
	digitaizingMode := aSymbol.

	self orthintActivated 
		ifTrue:[
			self changed: #vertfirstActivated.
			self changed: #horizfirstActivated.].
		
	self changed: #vertfirstEnabled.
	self changed: #horizfirstEnabled.
	
	self changed: #straightActivated.
	self changed: #octagonalActivated.
	self changed: #orthintActivated.
	self announceAttributeChanged: #digitaizingMode to: digitaizingMode.
