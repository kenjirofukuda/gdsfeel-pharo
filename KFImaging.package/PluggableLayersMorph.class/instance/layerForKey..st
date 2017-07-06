element control
layerForKey: aSymbol 
	^ layerMap 
		at: aSymbol
		ifAbsentPut: 
			[ | m |
			m := self newLayerForKey: aSymbol.
			self addMorph: m.
			m ]