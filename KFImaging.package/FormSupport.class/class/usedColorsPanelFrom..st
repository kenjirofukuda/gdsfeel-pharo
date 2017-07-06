service
usedColorsPanelFrom: aForm 
	| top colors |
	top := AlignmentMorph newColumn.
	top beTransparent.
	top layoutPolicy: TableLayout new.
	top clipSubmorphs: false.
	top borderWidth: 0.
	top extent: 50 @ 100.
	top vResizing: #shrinkWarp.
	top hResizing: #shrinkWarp.
	top setProperty: #modelForm toValue: aForm.
	colors := ColorSupport sortByLuminanceColors: (aForm colorsUsed ) .
	top setProperty: #colorsUsed toValue: colors.
	top addAllMorphs:
		(ColorSupport sampleMorphsOfColors: colors).

	top changed.
	top openInWorld