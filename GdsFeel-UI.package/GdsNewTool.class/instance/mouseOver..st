event handling
mouseOver: anEvent
	upDragging 
		ifTrue: [	
			self rangeMouseOver: anEvent].