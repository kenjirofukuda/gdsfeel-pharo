initialization
initialize
	super initialize.
	showAxisLines := true.
	showExtentBounds := true.
	document := nil asValueHolder.
	useNewCanvas  := self lookupNewCanvasEnabled asValueHolder.
	self on: #mouseDown send: #customMouseDown: to: self. 
	self on: #mouseMove send: #customMouseMove: to: self. 
	self on: #mouseUp send: #customMouseUp: to: self. 
	"can't handled #mouseWheel. direct override #mouseWheel: "
	"self on: #mouseWheel send: #customMouseWheel: to: self." 
	
	useNewCanvas whenChangedDo: [ self clearOffCanvas. self changed ]
	