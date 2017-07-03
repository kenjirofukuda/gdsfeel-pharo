accessing-points
findBounds
	| basicBounds maxSide |
	basicBounds := self dataBounds.
	maxSide := basicBounds width  max: basicBounds height.
	(basicBounds width closeTo: 0.0)
		ifTrue: [ ^ basicBounds expandBy: maxSide / 10.0 ].
	(basicBounds height closeTo: 0.0)
		ifTrue: [ ^ basicBounds expandBy: maxSide / 10.0 ].	
	^ basicBounds	