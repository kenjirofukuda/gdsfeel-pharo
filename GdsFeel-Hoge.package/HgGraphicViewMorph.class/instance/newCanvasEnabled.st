testing
newCanvasEnabled
	^ newCanvasEnabled := newCanvasEnabled ifNil: [ self lookupNewCanvasEnabled  ]