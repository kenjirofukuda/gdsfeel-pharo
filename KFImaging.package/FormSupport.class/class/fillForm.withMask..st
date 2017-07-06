service
fillForm: aBaseForm withMask: aFormOrColor
	| newForm  toneForm rule |
	newForm := aBaseForm deepCopy.
	rule := aBaseForm depth = 1
		ifTrue: [Form and.]
		ifFalse: [Form under.].
	toneForm := self makeHalftoneMaskForm: aBaseForm pattern: aFormOrColor.
	toneForm displayOn: newForm at: (0 @ 0) rule: rule.
	^ newForm.