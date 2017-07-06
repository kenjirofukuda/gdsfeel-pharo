offset action
offsetAction: aBlock
	self prompt: self afterSecondMessage.
	deltaPoint := self snapedWorldPoint2 - referencePoint.
	aBlock value. "using #relativeOffset"
	lastDeltaPoint := deltaPoint copy.
	lastPoint := self snapedWorldPoint2.
