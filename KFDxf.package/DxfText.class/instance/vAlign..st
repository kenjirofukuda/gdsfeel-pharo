accessing
vAlign: aSymbol
	| code |
	self assert: (self class vAlignSymbols includes: aSymbol).
	code := (self class vAlignSymbols indexOf: aSymbol) - 1.
	self setCode: 73 data: code. 