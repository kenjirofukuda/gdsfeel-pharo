as yet unclassified
isAcceptableBounds: aRectangle
	| worldSize1 |
	worldSize1 := aRectangle width min: aRectangle height  .
	^ (morph viewport pixelSize: (worldSize1))  > 10