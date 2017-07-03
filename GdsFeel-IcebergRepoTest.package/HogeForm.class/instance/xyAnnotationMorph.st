accessing
xyAnnotationMorph
	^ xyAnnotationMorph
		ifNil: [ 
			xyAnnotationMorph := self newAnnotationMorph ].