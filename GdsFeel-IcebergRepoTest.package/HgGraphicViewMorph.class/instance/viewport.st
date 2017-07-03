accessing
viewport
	^ viewport ifNil: [ viewport := self createViewport  ]