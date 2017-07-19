redo-undo
addCreateGraphicsUndoRecord: aNewGraphics
	self editingState
		redoArray:
			{self.
			#redoCreateGraphics:.
			{aNewGraphics}}
		undoArray:{self.
			#undoCreateGraphics:.
			{aNewGraphics}}