accessing  morph
xyAnnotationMorph
	^ xyAnnotationMorph
		ifNil: [ 
			xyAnnotationMorph := self newAnnotationMorph ].