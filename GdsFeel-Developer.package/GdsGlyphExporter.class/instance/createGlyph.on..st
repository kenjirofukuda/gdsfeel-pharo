as yet unclassified
createGlyph: asciiValue on: aGdsStructure 
	| c glyph |
	c := Character value: asciiValue.
	glyph := self class fontDescription at: c.
	aGdsStructure currentItem layerNumber: 0;
		 putRectangle: self class boundsForCompare.
	aGdsStructure currentItem layerNumber: 1;
		 boundary.
	glyph contours
		do: [:ptArray | 
			ptArray
				do: [:ttPoint | aGdsStructure currentItem ce: ttPoint].
			aGdsStructure currentItem put].
