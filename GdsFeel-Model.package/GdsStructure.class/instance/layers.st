accessing
layers
	self libraryLayers ifNotNil: [ :it | ^ it ].
	^ self localLayers