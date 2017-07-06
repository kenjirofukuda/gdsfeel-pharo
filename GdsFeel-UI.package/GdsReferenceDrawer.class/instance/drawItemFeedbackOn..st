drawing
drawItemFeedbackOn: aCanvas
	self strokeOutlineOn: aCanvas.
	element ifNotNil: [
		morph drawOn: aCanvas markDiamondPointAt: element xy]
