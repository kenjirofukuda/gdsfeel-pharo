utility
angle360: aDegree
	| rem |
	rem := aDegree asFloat rem: 360.0.
	^aDegree negative ifTrue: [360.0 + rem] ifFalse: [rem].
	