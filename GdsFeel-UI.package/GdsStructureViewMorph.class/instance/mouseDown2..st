event handling 2
mouseDown2: evt

	| pos |
	
	pos := evt cursorPoint.
	
	"left button"
	evt redButtonPressed ifTrue: [ 
		self setState: #panning value: { self viewport transform x@ self viewport transform y. pos }
		 ].