event handling
viewMoveHandled: anEvent
	| kc fractionPoint |
	kc := anEvent keyCharacter.
	fractionPoint := (kc caseOf: {
		[ Character arrowDown ] -> [ 0.0 @ -0.2 ].
		[ Character arrowUp ] -> [ 0.0 @ 0.2 ].
		[ Character arrowLeft ] -> [ -0.2 @ 0.0 ].
		[ Character arrowRight ] -> [ 0.2 @ 0.0 ].
	} otherwise: [ nil ]).
	fractionPoint ifNil: [^false].
	self viewport viewMove: fractionPoint.
	^true.
