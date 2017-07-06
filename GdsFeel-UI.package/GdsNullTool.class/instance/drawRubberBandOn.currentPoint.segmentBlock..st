drawing
drawRubberBandOn: aLocalCanvas currentPoint: aPoint segmentBlock: aSegmentBlock
	self 
		drawRubberBandOn:  aLocalCanvas 
		currentPoint:  aPoint 
		boundsBlock: [:b | "ignore bounds"
			aSegmentBlock value: referencePoint value: aPoint.] .
	
	