event handling
isSimulateBlueButtonPressed: anEvent
	anEvent yellowButtonPressed 
		ifFalse: [ ^ false ].
	Smalltalk os isMacOSX
		ifTrue: [ ^ anEvent commandKeyPressed  ].
	^ anEvent controlKeyPressed 	
	