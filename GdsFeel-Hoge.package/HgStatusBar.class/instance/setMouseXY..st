accessing
setMouseXY: aPoint
	self mouseXY
		label:
			(self
				pointString: aPoint
				label1: 'X'
				label2: 'Y'
				decimalPlaces: 4)