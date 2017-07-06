as yet unclassified
drawRubberBandOn: aLocalCanvas currentPoint: aPoint 
	self
		drawRubberBandOn: aLocalCanvas
		currentPoint: aPoint
		boundsBlock: [:bounds | morph drawOn: aLocalCanvas strokeBounds: bounds]