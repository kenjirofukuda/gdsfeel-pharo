service
showImages: aImages preDisplayBlock: aPerDisplayBlock 
	self 
		privateShowImages: aImages
		preDisplayBlock: aPerDisplayBlock.
	aPerDisplayBlock value.
	Display restore