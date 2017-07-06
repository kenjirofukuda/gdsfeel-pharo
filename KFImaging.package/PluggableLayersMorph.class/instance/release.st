initialization
release
	layerMap ifNotNil: [ layerMap do: [ :each | each release ] ].
	layerMap := nil.
	super release