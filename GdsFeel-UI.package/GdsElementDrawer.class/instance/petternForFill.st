drawing-attribute
petternForFill
	^ ColorForm 
		mappingWhiteToTransparentFrom: (QDPattern formAt: self defaultQDPatternIndex)
		blackAsColor: (morph colorForElement: element)