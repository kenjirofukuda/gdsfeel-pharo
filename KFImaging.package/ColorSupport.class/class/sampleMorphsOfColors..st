service
sampleMorphsOfColors: aColorArray 
	^aColorArray
		collect: [ :color | self sampleMorphOfColor: color].