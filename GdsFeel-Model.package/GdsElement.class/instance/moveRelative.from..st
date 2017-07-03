accessing-points
moveRelative: aPoint from: aOtherElement
	| translatedPoints |
	translatedPoints := aOtherElement vertices collect: [:p | p + aPoint].
	self privateWipe.
	self vertices: translatedPoints.