*GdsFeel-Foundation-extension
outlinePoints: offsetRadians r: r
	| slant p1 p2 p3 p4  offP1 offP2 |
	slant := (self end -  self start) theta .
	offP1 := Point r: r radians: (slant - offsetRadians).
	offP2 := Point r: r radians: (slant + offsetRadians).
	p4 := self start - offP2.
	p1 := self end + offP1.
	p2 := self end + offP2.
	p3 := self start - offP1.		
	^{p1 . p2 .p3 . p4 . p1}.
	