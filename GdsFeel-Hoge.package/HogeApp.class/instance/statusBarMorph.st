accessing  morph
statusBarMorph
	^ statusBarMorph
		ifNil: [ statusBarMorph := Smalltalk ui theme
				newRowIn: nil
				for:
					(Array
						streamContents: [ :s | 
							s nextPut: self xyAnnotationMorph.
							s nextPut: (self spacer: 3).
							s nextPut: self hvAnnotationMorph.
							s nextPut: (self spacer: 3).
							s nextPut: self whAnnotationMorph ]) ]