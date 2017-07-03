objects from disk
ensureOpenDuring: aBlock 
	| saveOpend |
	saveOpend := self isOpen.
	[saveOpend ifFalse: [ self open ].
	aBlock value.] 
	ensure: [
		saveOpend ifFalse: [ self close ]].