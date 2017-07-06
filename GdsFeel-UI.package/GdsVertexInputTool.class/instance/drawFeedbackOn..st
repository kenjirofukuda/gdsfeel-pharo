drawing
drawFeedbackOn: aLocalCanvas
	self currentItem isReferenceType 
		ifTrue: [morph drawItemReferencesOn: aLocalCanvas.]
		ifFalse: [morph drawItemVerticesOn: aLocalCanvas.].
	
