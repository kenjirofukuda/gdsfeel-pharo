command-handler
chooseLayer
	| number |
	number := self privateChooseLayer.
	number ifNil:[^self].	
	self structure currentItem layerNumber: number.