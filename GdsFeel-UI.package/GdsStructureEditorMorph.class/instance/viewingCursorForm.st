initialization
viewingCursorForm
	viewingCursorForm ifNil: [viewingCursorForm := self createViewingCursorForm ].
	^viewingCursorForm.