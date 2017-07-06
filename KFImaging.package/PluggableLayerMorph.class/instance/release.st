initialization
release
	self stopStepping.
	drawOnBlock := nil.
	stepBlock := nil.
	stepTime := nil.
	symbol := nil.
	updateBlock := nil.
	super release.
	