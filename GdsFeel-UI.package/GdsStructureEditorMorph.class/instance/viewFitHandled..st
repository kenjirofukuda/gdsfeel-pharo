event handling
viewFitHandled: anEvent
	| kc doFit |
	kc := anEvent keyCharacter.
	doFit := (kc caseOf: {
		[ Character home ] -> [ true].
	} otherwise: [ nil ]).
	doFit ifNil: [^false].
	self viewport viewFit.
	^true.		