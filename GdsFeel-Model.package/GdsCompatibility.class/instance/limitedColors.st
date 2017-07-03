testing
limitedColors
	^ self supportedColorSymbols collect: [ :colorSymbol | Color perform: colorSymbol].
