utility
fixMag: aFactor
	^(aFactor asFloat <= 0.0) ifTrue: [1.0] ifFalse: [aFactor asFloat].

	