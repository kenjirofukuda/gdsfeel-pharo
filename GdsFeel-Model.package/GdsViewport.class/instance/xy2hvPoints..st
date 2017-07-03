transforms
xy2hvPoints: aPointArray
	^aPointArray collect: 
		[:each | self xy2hv: each]. 