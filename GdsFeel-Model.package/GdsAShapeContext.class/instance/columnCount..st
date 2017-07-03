accessing
columnCount: anInteger
	self assert: [ anInteger isNumber ].
	self assert: [ anInteger > 0 ] description: 'columnCount >= 1'.
	columnCount = anInteger asInteger
		ifTrue: [ ^ self ].
	columnCount := anInteger asInteger.
	self refreshBounds.
	self changed: #columnCount