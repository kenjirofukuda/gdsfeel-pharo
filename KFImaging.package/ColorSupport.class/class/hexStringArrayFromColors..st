service
hexStringArrayFromColors: aColorArray
	^aColorArray
		collect: [ :color | '#', color hex].