viewing navigation
viewMoveRight
	self viewport ifNil: [^self].
	self viewport viewMove: (self viewMoveRatio@0.0).
