as yet unclassified
putBoxText: aRectangle
	self assert: aRectangle origin ~= aRectangle corner.
	self boxtext.
	self ce: aRectangle origin.
	self ce: aRectangle corner.
	self put.