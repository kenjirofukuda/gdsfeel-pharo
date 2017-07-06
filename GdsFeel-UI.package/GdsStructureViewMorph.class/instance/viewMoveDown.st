viewing navigation
viewMoveDown
	self viewport ifNil: [^self].
	self viewport viewMove: (0.0@self viewMoveRatio negated).
