testing
isEmpty
	self structure ifNil: [ ^ true].
	ids ifNil: [ ^ true].
	^ ids value isEmpty.