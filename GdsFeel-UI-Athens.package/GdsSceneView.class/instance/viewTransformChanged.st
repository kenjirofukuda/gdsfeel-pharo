as yet unclassified
viewTransformChanged
	self lockTransformUpdate ifTrue: [ ^ self ].
	transform := self viewport transform asAthensAT