adding
addDeleteSelectionUndoRecord
	self editingState
		redoArray: { self document. #removeGraphics:.  {self document selectedGraphics } } 
		undoArray: { self document. #addGraphics:.  {self document selectedGraphics } }.