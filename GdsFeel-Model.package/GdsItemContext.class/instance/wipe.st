command
wipe
	self privateWipe.
	editElement 
		ifNotNil: [
			editElement wipe.
			self structure removeElement: editElement.
			editElement := nil.].
	self changed.
	self changed: #wipe.
	self changedPutGetDependent.
	