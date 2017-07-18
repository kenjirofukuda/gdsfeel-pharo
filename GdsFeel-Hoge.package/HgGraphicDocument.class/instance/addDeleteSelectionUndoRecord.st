redo-undo
addDeleteSelectionUndoRecord
	self editingState
		redoArray:
			{self.
			#redoDeleteSelection:.
			{self selectedGraphics}}
		undoArray:
			{self.
			#undoDeleteSelection:.
			{self selectedGraphics}}