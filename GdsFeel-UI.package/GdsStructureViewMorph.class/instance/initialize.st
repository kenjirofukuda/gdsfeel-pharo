initialization
initialize
	super initialize.
	self clipSubmorphs: true.
	self color: Color black.
	fastDrawing := false.
	state := Dictionary new.
