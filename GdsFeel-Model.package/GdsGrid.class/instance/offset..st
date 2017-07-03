accessing
offset: aOffset
	| p |
	p := aOffset asPoint.
	self setOffsetX: p x setOffsetY: p y. 
	self changed: #gridOffset.
	self displayMultiply: 1.
	
	