accessing
borderWidth: aPoint
	super borderWidth: aPoint.
	layerMap do: [:each | each borderWidth: aPoint].