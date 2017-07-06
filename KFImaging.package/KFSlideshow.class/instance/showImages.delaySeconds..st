service
showImages: aImages delaySeconds: aDelaySeconds 
	self 
		showImages: aImages
		preDisplayBlock: [ (Delay forSeconds: aDelaySeconds) wait]