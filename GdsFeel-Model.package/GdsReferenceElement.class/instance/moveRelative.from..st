accessing
moveRelative: aPoint from: aOtherElement
	| translatedPoint |
	translatedPoint := aOtherElement xy+ aPoint.
	self privateWipe.
	self xy: translatedPoint.