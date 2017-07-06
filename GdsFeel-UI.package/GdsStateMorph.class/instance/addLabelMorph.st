as yet unclassified
addLabelMorph
	| cellSize |
	cellSize := 16.
	labelMorph := StringMorph new
		contents: '--';
		extent: cellSize asPoint;
		yourself.
	"GdsToolsBuilder changeControlCaptionFont: labelMorph."
	self addMorphBack: labelMorph.
