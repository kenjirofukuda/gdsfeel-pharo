event handling
viewZoomHandled: anEvent
	| kc zoomFactor |
	kc := anEvent keyCharacter.
	zoomFactor := (kc caseOf: {
		[ Character pageDown ] -> [ 0.75 ].
		[ Character pageUp ] -> [ 1.25 ].
	} otherwise: [ nil ]).
	zoomFactor ifNil: [^false].
	self viewport zoom: zoomFactor.
	^true.		