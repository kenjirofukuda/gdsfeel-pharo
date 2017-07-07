initialization
initialize
	super initialize.
	document := nil asValueHolder.
	self on: #mouseDown send: #customMouseDown: to: self. 
	self on: #mouseMove send: #customMouseMove: to: self. 
	self on: #mouseUp send: #customMouseUp: to: self. 
	"can't handled #mouseWheel. direct override #mouseWheel: "
	"self on: #mouseWheel send: #customMouseWheel: to: self." 
	