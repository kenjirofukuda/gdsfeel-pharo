private
putBoxText: aRectangle
	self currentItem boxtext.
	self currentItem ce: aRectangle origin.
	self currentItem ce: aRectangle corner.
	self currentItem put.