accessing-points
absoluteAngle: aTheta
	| theta |
	theta := aTheta.
	^theta negative
		ifTrue: [(Float pi * 2) + theta]
		ifFalse:[theta].
