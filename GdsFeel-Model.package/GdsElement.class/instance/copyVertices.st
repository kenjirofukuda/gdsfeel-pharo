copying
copyVertices
	| points |
	points := (self vertices collect: [:each | each copy ]).
	self privateWipe.
	self vertices: points.
	