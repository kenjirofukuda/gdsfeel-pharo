instance creation
createIconPanelMorph
	"self  createIconPanelMorph openInWorld"
	| l |
	l := AlignmentMorph new.
	self beTableLayout: l.
	l borderStyle: (BorderStyle complexAltFramed width: 5).
	l color: (Color r: 0.972 g: 0.972 b: 0.788 alpha: 0.412).
	^l.