testing
layerEnabled
	self elementClass ifNil: [^false].
	^self elementClass hasLayer.