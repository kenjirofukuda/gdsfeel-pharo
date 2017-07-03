transforms
pixelSize: aWorldSize
	^(self xy2hv: aWorldSize asPoint) dist: (self xy2hv: 0 asPoint)