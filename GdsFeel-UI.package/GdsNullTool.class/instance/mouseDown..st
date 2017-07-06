event handling
mouseDown: anEvent
	self setEvent: anEvent.
	self eventAction. 
	GdsFeelMorphic clickSoundEnabled 
		ifTrue: ["SoundService default playSoundNamed: 'click' "].
	