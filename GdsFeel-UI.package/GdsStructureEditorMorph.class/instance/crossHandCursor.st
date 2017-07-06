event handling
crossHandCursor
	^self canGriddedCursor ifTrue: [Cursor blank] ifFalse: [Cursor crossHair].