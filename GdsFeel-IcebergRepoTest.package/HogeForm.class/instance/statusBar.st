accessing
statusBar
	^ statusBar ifNil: [ statusBar := self xyAnnotationMorph asSpecAdapter  ]