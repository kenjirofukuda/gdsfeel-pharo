*GdsFeel-Foundation-extension
startPointTo: aPoint
	(self start closeTo: aPoint)
		ifTrue: [ ^ self  ].
	(self end closeTo: aPoint)
		ifTrue: [ ^ self reversed  ].
	^ self