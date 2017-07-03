accessing
dataExtentForIdElements
	| bBox |
	bBox := GeometryUtils minusBounds.
	self idSelection elements do: [ :e | bBox := bBox quickMerge: e dataBounds  ].
	^ bBox