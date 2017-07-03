accessing
rowCount: anInteger
	self assert: [ anInteger isNumber ].
	self assert: [ anInteger > 0 ] description: 'rowCount >= 1'.
	rowCount = anInteger asInteger
		ifTrue: [ ^ self ].
	rowCount := anInteger asInteger.
	self refreshBounds.
	self changed: #rowCount