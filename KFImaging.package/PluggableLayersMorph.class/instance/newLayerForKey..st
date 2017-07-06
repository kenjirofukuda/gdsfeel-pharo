element control
newLayerForKey: aSymbol 
	| m |
	m := self defaultLayerClass  new.
	m extent: self extent.
	m symbol: aSymbol.
	^ m