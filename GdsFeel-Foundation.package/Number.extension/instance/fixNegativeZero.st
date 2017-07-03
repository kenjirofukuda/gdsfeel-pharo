*GdsFeel-Foundation
fixNegativeZero
	(self closeTo: Float negativeZero) ifTrue: [ ^ self abs ].
	^ self 