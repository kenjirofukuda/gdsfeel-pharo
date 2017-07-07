testing
useNewCanvas
	^ useNewCanvas := useNewCanvas ifNil: [ self lookupNewCanvasEnabled  ]