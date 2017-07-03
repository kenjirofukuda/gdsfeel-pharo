accessing
whAnnotationMorph
	^ whAnnotationMorph
		ifNil: [ 
			whAnnotationMorph := self newAnnotationMorph ].