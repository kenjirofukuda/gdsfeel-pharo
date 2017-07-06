geometry
extent: aPoint
	super extent: aPoint.
	layerMap do: [ :each | each extent: aPoint ]