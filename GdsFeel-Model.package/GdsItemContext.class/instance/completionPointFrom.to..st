private
completionPointFrom: aPoint1 to: aPoint2
	| deltaPoint r theta roundedTheta |
	(self digitaizingMode = #straight)
		ifTrue: [^nil.].
	(self digitaizingMode = #octagonal)
		ifTrue: [
			deltaPoint := aPoint2 - aPoint1.
			r := deltaPoint r.
			theta := deltaPoint theta.
			roundedTheta := GeometryUtils octagonalRoundTheta: theta.
			^(Point r: r degrees: roundedTheta radiansToDegrees) + aPoint1.].
	(self digitaizingMode = #orthint)
		ifTrue: [
			^(self digitaizingDirection = #vertfirst)
				ifTrue: [(aPoint1 x)@(aPoint2 y)]
				ifFalse: [(aPoint2 x)@(aPoint1 y)]].
	^nil.