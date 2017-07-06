drawing
drawRubberBandOn: aLocalCanvas currentPoint: aPoint 
	self
		drawRubberBandOn: aLocalCanvas
		currentPoint: aPoint
		boundsBlock: [:bounds | 
			morph drawOn: aLocalCanvas strokeBounds: bounds.
			morph
				drawOn: aLocalCanvas
				fittingStrokeString: self currentItem text
				bounds: bounds]