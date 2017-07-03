accessing
xStep: aFloat
	self assert: [ aFloat  isNumber ].
	xStep = aFloat
		ifTrue: [ ^ self ].
	xStep := aFloat.
	self refreshBounds.
	self changed: #xStep