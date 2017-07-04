accessing
bounds
	| bounds |
	bounds := GeometryUtils minusBounds.
	graphics do: [ :g | bounds := bounds quickMerge: g bounds ].
	^ bounds