drawing
rectangleCenter: aCenterPoint handleHalfSize: aHandleHalfSize
	| halfHandle |
	halfHandle := aHandleHalfSize asPoint.
	^ Rectangle 
		origin: aCenterPoint - halfHandle  corner: aCenterPoint + halfHandle