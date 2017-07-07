event handler
viewMove
	| p1 p2 lp1 lp2 |
	points size < 2 ifTrue: [ ^ self ].
	lp1 := points at: (points size - 1).
	lp2 := points last.
	p2 := self viewport worldPointFromGlobal: lp2.
	p1 := self viewport worldPointFromGlobal: lp1.
	self viewMoveFrom: p1 to: p2.