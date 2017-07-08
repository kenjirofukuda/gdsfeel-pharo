event handler
viewMove
	| p1 p2 lp1 lp2 |
	points size < 2 ifTrue: [ ^ self ].
	lp1 := points at: (points size - 1).
	lp2 := points last.
	p1 := self viewport worldPointFromGlobal: lp1.
	p2 := self viewport worldPointFromGlobal: lp2.
	self viewMoveDeviceFrom: lp1 to: lp2.