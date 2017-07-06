initialization
cursorForm
	^self mouseLayer valueOfProperty: #cursorForm ifAbsent: [Cursor crossHair asCursorForm.].