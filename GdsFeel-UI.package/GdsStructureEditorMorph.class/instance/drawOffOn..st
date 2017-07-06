drawing
drawOffOn: aCanvas 
	| newFillImage |
	super drawOffOn: aCanvas.
	feedbackCanvas
		ifNotNil: [
			newFillImage := ColorForm 
				mappingWhiteToTransparentFrom: feedbackCanvas form 
				blackAsColor: self visiblePickingColor.
			aCanvas
				image: newFillImage form
				at: self pixelBounds origin
				sourceRect: newFillImage form boundingBox
				rule: Form paint]