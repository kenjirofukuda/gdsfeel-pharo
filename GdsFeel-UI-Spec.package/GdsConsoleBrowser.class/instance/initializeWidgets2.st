initialization
initializeWidgets2
	GdsFeel fittingRatio: 0.8.
	structureViewMorph := GdsStructureEditorMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.
	consoleMorph := GdsConsoleMorph new
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		yourself.
	consoleMorph overlayMorph: structureViewMorph.
	structureViewMorph handleEventsBySelf: false.
	consoleMorph announcer when: #mouseEnter send: #enterArea: to: structureViewMorph.
	consoleMorph announcer when: #mouseLeave send: #leaveArea: to: structureViewMorph.
	GdsStation default announcer
		when: #structureChanged
		do: [ structureViewMorph model: GdsStation default structure ]