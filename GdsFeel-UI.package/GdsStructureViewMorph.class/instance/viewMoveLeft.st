viewing navigation
viewMoveLeft
	self viewport ifNil: [^self].
	self viewport viewMove: (self viewMoveRatio negated@0.0).
