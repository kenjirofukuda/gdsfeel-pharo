event handling
enterArea: anEvent
	self startStepping.
	GdsFeelMorphic useCustomCursor
		ifTrue: [ 
			self mouseLayer startStepping.
			ActiveHand showTemporaryCursor: self crossHandCursor ]