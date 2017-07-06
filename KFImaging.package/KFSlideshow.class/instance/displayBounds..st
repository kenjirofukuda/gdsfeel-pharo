accessing
displayBounds: aRectangle
	self assert: [aRectangle width > 0 and: [aRectangle height > 0]].
	displayBounds := aRectangle.