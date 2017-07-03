accessing
statusBarMorph
	^ statusBarMorph
		ifNil: [ statusBarMorph := UITheme current
				newRowIn: nil
				for:
					(Array
						streamContents: [ :s | 
							s nextPut: self xyAnnotationMorph.
							s nextPut: (self spacer: 3).
							s nextPut: self hvAnnotationMorph .
							s nextPut: (self spacer: 3).
							s nextPut: self whAnnotationMorph .
							]) ]