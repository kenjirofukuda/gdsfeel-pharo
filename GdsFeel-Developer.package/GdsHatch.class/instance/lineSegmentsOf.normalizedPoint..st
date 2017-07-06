drawing-support
lineSegmentsOf: aBoundsRectangle normalizedPoint: aNormalizedPoint
	| cp length atPoint1 atPoint2 step offsetPt screenSize sidesCount destSize |
	^ Array streamContents: [ :s |
		cp := aBoundsRectangle center.
		screenSize := aBoundsRectangle extent r.
		length := screenSize // 2.
		atPoint1 := (aNormalizedPoint * length) + cp.
		atPoint2 := (aNormalizedPoint negated * length) + cp.
		step := (screenSize // self linesPerScreen) + 1.
		offsetPt := (aNormalizedPoint normal  * step).
		sidesCount := self linesPerScreen // 2.
		(sidesCount negated to: sidesCount) do:[:index |
			destSize := (offsetPt * index).
			s nextPut: { (atPoint1 + destSize) . (atPoint2 + destSize)} ] ]
