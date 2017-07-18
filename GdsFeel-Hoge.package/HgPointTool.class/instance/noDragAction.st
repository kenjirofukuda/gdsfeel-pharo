event handler
noDragAction
	| newGraphic |
	newGraphic := HgPointGraphic new
		origin: self lastWorldPoint;
		yourself.
	self document addCreateGraphicUndoRecord: newGraphic.	
	self document addGraphic: newGraphic.
	