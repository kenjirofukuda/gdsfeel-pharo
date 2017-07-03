as yet unclassified
reducedPoints: aLength p1: pt1 p2: pt2
	| deltaPoint theta dx dy |
	deltaPoint := pt2 - pt1.
	theta := deltaPoint theta.
	dx := theta cos * aLength.
	dy := theta sin *aLength.
	^{pt1 + (dx@dy) . pt2 - (dx@dy) }