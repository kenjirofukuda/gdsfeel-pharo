example
examplePatternTableMorph
	"self examplePatternTableMorph openInWorld"
	| icons panel panelSize box |
	icons := self allForms
				collect: [:form | form asMorph ].
	icons ifEmpty: [^ self].
	panel := ImageTable createIconPanelMorph.
	panelSize := icons size sqrt ceiling asInteger * self exampleIconSize.
	panelSize := panelSize + (self exampleIconSize // 3).
	panel width: panelSize.
	panel height: panelSize.
	panel addAllMorphs: icons.
	box := panel boundingBoxOfSubmorphs.
	panel width: box width.
	panel height: box height.
	^ panel