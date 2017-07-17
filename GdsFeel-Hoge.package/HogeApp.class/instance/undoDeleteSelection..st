as yet unclassified
undoDeleteSelection: aSelectedGraphics
	self document addGraphics: aSelectedGraphics.
	self document unselectGraphics: self document graphics.
	self document selectGraphics: aSelectedGraphics.