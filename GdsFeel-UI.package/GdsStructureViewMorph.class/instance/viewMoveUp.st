viewing navigation
viewMoveUp
	self viewport ifNil: [^self].
	self viewport viewMove: (0.0@self viewMoveRatio).
