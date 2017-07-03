accessing
stateLetter
	(self isVisible and: [self isSelectable]) ifTrue: [^$@].
	(self isVisible) ifTrue: [^$O].	
	(self isSelectable) ifTrue: [^$+].
	^$-.
			