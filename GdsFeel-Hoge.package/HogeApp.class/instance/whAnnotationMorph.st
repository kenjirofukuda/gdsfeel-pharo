accessing  morph
whAnnotationMorph
	^ whAnnotationMorph
		ifNil: [ 
			whAnnotationMorph := self newAnnotationMorph ].