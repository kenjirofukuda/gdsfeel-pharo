command
putEpilogue: newElement
	self privateWipe.
	editElement := nil.
	self changed.
	newElement ifNotNil: [self changed: #newElement].
	self changed: #put.
	self changedPutGetDependent.
	