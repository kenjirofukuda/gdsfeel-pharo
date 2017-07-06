service
makeHalftoneMaskForm: aBaseForm pattern: aFormOrColor
	| bwHalfToneForm |
	bwHalfToneForm := Form extent: aBaseForm extent depth: 1.
	aFormOrColor class = Color
		ifTrue: [bwHalfToneForm fillWithColor: aFormOrColor].
	aFormOrColor class = InfiniteForm
		ifTrue: [aFormOrColor displayOn: bwHalfToneForm].
	aFormOrColor class = Form
		ifTrue: [(InfiniteForm with: aFormOrColor) displayOn: bwHalfToneForm].
	^bwHalfToneForm.
