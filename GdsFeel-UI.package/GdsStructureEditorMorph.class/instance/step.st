event handling
step
	| wp2 |
	self viewport ifNil: [ ^ self ].
	offCanvas ifNil: [ ^ self ].
	self handleEventsBySelf
		ifTrue: [ 
			(self bounds containsPoint: Sensor cursorPoint)
				ifTrue: [ 
					self activeHand keyboardFocus == self
						ifFalse: [ self activeHand newKeyboardFocus: self ] ].
			GdsFeelMorphic useCustomCursor
				ifTrue: [ self activeHand showTemporaryCursor: self crossHandCursor ] ].
	Sensor redButtonPressed
		ifTrue: [ ^ self ].
	wp2 := self viewport worldPointFromGlobal: Sensor cursorPoint.
	lastPoint ifNil: [ lastPoint := wp2 copy ].
	lastPoint = wp2
		ifTrue: [ ^ self ].
	self currentTool rubberBandEnabled
		ifTrue: [ self rubberbandPoint: wp2 ]