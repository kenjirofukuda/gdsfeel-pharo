accessing
hvAnnotationMorph
	^ hvAnnotationMorph
		ifNil: [ 
			hvAnnotationMorph := self newAnnotationMorph ].