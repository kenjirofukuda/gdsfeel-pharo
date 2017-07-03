accessing
idSelection
	self structure ifNotNil: [ :struc | ^ struc idSelection ].
	^ nil