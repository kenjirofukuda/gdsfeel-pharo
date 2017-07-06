event handling
rubberbandPoint: aPoint 
	feedbackCanvas ifNil: 
		[ feedbackCanvas := FormCanvas 
			extent: self pixelBounds extent
			depth: 1 ].
	feedbackCanvas fillColor: Color white.

	self 
		penColor: Color black
		during: [
			self currentTool 
				drawRubberBandOn: feedbackCanvas
				currentPoint: aPoint].
				
	lastPoint := aPoint copy