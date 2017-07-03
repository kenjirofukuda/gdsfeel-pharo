accessing
scale: aScale
	| p |
	p := aScale asPoint.
	self setScaleX: p x setScaleY: p y. 
	self changed: #gridScale.
	self displayMultiply: 1.
	