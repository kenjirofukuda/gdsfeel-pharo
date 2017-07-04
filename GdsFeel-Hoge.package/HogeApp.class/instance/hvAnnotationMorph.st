accessing  morph
hvAnnotationMorph
	^ hvAnnotationMorph
		ifNil: [ 
			hvAnnotationMorph := self newAnnotationMorph ].