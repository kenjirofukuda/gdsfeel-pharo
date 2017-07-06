accessing
hAlign: aSymbol
	| code |
	self assert: (self class hAlignSymbols includes: aSymbol).
	code := (self class hAlignSymbols indexOf: aSymbol) - 1.
	self setCode: 72 data: code. 