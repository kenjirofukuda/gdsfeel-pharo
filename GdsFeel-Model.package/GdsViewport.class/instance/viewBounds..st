accessing
viewBounds: aWorldBounds
	| hRatio vRatio scalingFactor centerPoint |
	scalingFactor := 1.
	hRatio := [ (self pixelBounds width / aWorldBounds width) asFloat ]
		on: Error
		do: [ :ex | ex return: 1 ].
	vRatio := [ (self pixelBounds height / aWorldBounds height) asFloat ]
		on: Error
		do: [ :ex | ex return: 1 ].
	scalingFactor := hRatio min: vRatio.
	centerPoint := (aWorldBounds origin + aWorldBounds corner) / 2.0.
	self
		lockUpdateDuring: [ 
			self portCenter: self pixelBounds extent / 2.0.
			self viewScale: scalingFactor.
			self viewCenter: centerPoint ]