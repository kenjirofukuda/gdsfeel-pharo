accessing
shapes
	^ shapes ifNil: [ shapes := self lookupShapes ]