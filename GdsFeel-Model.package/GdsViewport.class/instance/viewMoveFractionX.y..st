viewing
viewMoveFractionX: aXfraction y: aYfraction	
	| xDelta yDelta newCenter |
	xDelta := self worldViewWidth * aXfraction.
	yDelta := self worldViewHeight * aYfraction.	
	newCenter := self viewCenter + (xDelta@yDelta).
	self viewCenter: newCenter.
	