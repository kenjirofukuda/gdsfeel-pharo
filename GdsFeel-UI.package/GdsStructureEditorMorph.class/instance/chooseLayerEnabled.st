testing-enabled
chooseLayerEnabled
	self structure ifNil: [^false].
	^self structure currentItem layerEnabled.