deprecated
layer: aInteger
	self deprecated: 'use #layerNumber:'.
	self assert: [aInteger isInteger].
	layer := aInteger.
	self changed: #layer.