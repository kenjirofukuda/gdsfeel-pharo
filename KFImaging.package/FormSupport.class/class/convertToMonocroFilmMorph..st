service
convertToMonocroFilmMorph: aForm
	^(self convertToMonocroFilmForm: aForm) asMorph.

"Example:"

"

	| f |
	Display depth = 32 ifFalse: [^self].
	f := Form fromUser.
	(self convertToMonocroFilmMorph: f)
		openInWorld.
"