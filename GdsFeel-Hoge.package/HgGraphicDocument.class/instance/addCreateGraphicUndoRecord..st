redo-undo
addCreateGraphicUndoRecord: aNewGraphic
	self editingState
		redoArray:
			{self.
			#redoCreateGraphic:.
			{aNewGraphic}}
		undoArray:{self.
			#undoCreateGraphic:.
			{aNewGraphic}}