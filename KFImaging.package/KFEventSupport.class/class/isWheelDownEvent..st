testing
isWheelDownEvent: aEvent
	(aEvent isMouseWheel)
		ifFalse: [ ^ false ].
	(aEvent respondsTo: #isDown)
		ifTrue: [ ^ aEvent perform: #isDown ].
	^ aEvent direction = #down.