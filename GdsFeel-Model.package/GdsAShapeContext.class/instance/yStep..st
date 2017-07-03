accessing
yStep: aFloat
	self assert: [aFloat isNumber].
	yStep = aFloat ifTrue: [^self].
	yStep := aFloat.
	self refreshBounds.
	self changed: #yStep.
	