as yet unclassified
upCount: aSymbol
	self using: aSymbol.
	countMap at: aSymbol put: ((countMap at: aSymbol) + 1).