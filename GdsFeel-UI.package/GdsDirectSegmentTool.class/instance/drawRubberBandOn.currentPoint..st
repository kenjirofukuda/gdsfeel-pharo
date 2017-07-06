as yet unclassified
drawRubberBandOn: aLocalCanvas currentPoint: aPoint 
	self 
		drawRubberBandOn: aLocalCanvas 
		currentPoint: aPoint 
		segmentBlock: [
			:pt1 :pt2 |
			morph drawOn: aLocalCanvas lineFrom: pt1 to: pt2.].