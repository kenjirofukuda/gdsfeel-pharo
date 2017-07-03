as yet unclassified
pointArray: aPointArray lineSegmentsDo: aLineSegmentBlock
	| p1 p2 segment |
	aPointArray size < 2 ifTrue: [^self].
	1 to: aPointArray size -1 do: [ :index |
		p1 := aPointArray at: index.
		p2 := aPointArray at: index + 1.
		segment := LineSegment from: p1 to: p2.
		aLineSegmentBlock value: segment]. 