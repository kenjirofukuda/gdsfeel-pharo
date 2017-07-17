adding
addDeleteSelectionUndoRecord
	self editingState
		redoArray:
			{self.
			#redoDeleteSelection:.
			{self document selectedGraphics}}
		undoArray:
			{self.
			#undoDeleteSelection:.
			{self document selectedGraphics}}