service
convertToMonocroFilmForm: aForm
	| dstForm newColor |
	dstForm := aForm asGrayScale as8BitColorForm.
	dstForm colorsUsed
		do: [ :oldColor |
			newColor := (Color gray: 0.0) alpha: ( 1 - oldColor brightness ).
			dstForm replaceColor: oldColor with: newColor].
	^dstForm.

"Example:"
"
	| f |
	Display depth = 32 ifFalse: [^self].
	f := Form fromUser.
	f := self convertToMonocroFilmForm: f.
	Display restoreAfter: [
		false ifTrue: [Display fillWhite].
		f displayOn: Display at: (0@0) rule: Form blend].
"