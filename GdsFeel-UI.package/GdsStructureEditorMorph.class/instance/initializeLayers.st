initialization
initializeLayers
	self initializeGridLayer.
	self initializeIdLayer.
	self initializeItemLayer.
	self initializeMarkLayer.
	GdsFeelMorphic useCustomCursor
		ifTrue: [ self initializeSensorLayer ].
	self initializeContainerChooserLayer