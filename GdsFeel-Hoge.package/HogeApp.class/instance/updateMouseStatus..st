initialization
updateMouseStatus: anEvent
	| hvPoint xyPoint |
	hvPoint := anEvent cursorPoint.
	xyPoint := self graphicView morph viewport transform invertPoint: hvPoint.
	self xyAnnotationMorph
		setTextWith:
			(self
				pointString: xyPoint
				label1: 'X'
				label2: 'Y'
				decimalPlaces: 4).
	
	self hvAnnotationMorph
		setTextWith:
			(self
				pointString: hvPoint
				label1: 'H'
				label2: 'V').
