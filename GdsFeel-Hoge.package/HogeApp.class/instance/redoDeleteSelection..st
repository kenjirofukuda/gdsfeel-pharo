as yet unclassified
redoDeleteSelection: aSelectedGraphics
	self document removeGraphics: aSelectedGraphics.
	lastSelected ifNotNil: [ self document selectGraphics: lastSelected ]