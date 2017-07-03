as yet unclassified
degressNormalized: aNumber
	| newAngle |
	newAngle := aNumber.
	(aNumber abs asFloat >= 360.0)
		ifTrue: [ newAngle := aNumber \\ 360.0 ].
	newAngle negative
		ifTrue: [ newAngle := 360.0 + newAngle ].
	^ newAngle
	