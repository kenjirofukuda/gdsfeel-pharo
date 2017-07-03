debug-flags
fittingRatio: aFloat
	self assert: [ aFloat between: 0.5 and: 1.0 ] description: 'fittingRatio specify between 0.5 and 1.0'.
	^ self typedMap numberFor: #fittingRatio value: aFloat