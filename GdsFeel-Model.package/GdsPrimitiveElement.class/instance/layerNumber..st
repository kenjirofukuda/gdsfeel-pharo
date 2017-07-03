accessing
layerNumber: aInteger
	self assert: [aInteger isInteger].
	layerNumber := aInteger.
	self changed: #layerNumber.