testing
isWheelUpEvent: aEvent
	(aEvent isMouseWheel)
		ifFalse: [ ^ false ].
	(aEvent respondsTo: #isUp)
		ifTrue: [ ^ aEvent perform: #isUp ].
	^ aEvent direction = #up.