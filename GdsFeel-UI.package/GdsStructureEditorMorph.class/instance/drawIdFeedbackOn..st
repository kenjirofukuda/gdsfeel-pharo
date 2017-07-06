drawing-feedback
drawIdFeedbackOn: aLocalCanvas
	self 
		penColor: self visiblePickingColor
		during: [ 	
			self 
				drawOn: aLocalCanvas 
				elements: self structure idSelection elements
				drawingSelector: #strokeOutlineOn:.
	
				(self currentTool isNil not and: [self structure idSelection notEmpty]) 
					ifTrue: [
						self currentTool drawFeedbackOn: aLocalCanvas]].
	
	