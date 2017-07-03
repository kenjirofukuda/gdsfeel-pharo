command
unget
	self privateUnget.
	self changed.
	self changed: #unget.
	self changedPutGetDependent.