event handler
noDragAction
	self document
		addGraphic:
			(HgPointGraphic new
				origin: self lastWorldPoint;
				yourself)