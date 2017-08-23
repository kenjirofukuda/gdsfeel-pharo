event handler
trackEnd
	self dragged
		ifFalse: [ self noDragAction ]
		ifTrue: [ self dragAction ]