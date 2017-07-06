drawing-feedback
drawItemFeedbackOn: aLocalCanvas
	self 
		penColor: self visiblePickingColor
		during: [
			self 
				drawOn: aLocalCanvas 
				elements: self structure currentItem feedbackElements
				drawingSelector: #drawItemFeedbackOn:.
		
			self toolFeedbackEnabled 
				ifTrue: [
					self currentTool drawFeedbackOn: aLocalCanvas].

			self drawItemVertexNumbersOn: aLocalCanvas.]
	