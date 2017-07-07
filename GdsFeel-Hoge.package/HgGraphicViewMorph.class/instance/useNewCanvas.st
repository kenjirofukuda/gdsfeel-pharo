accessing
useNewCanvas
	^ useNewCanvas := useNewCanvas ifNil: [ self lookupNewCanvasEnabled  ]