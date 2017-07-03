accessing
layerNumber: aInteger
	layerNumber = aInteger ifTrue: [^self].
	layerNumber := aInteger.
	self changed: #layerNumber.
	"TODO: remove this change. Model not known GUI"	
	self changed: #chooseLayerLabel.	
