redo-undo
undoDeleteSelection: aSelectedGraphics
	self addGraphics: aSelectedGraphics.
	self unselectGraphics: self graphics.
	self selectGraphics: aSelectedGraphics.