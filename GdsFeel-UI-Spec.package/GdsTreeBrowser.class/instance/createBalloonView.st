initialization
createBalloonView
	^ GdsStructureEditorMorph
		new
		defaultToolClass: GdsSelectTool;
		currentToolClass: GdsSelectTool;
		yourself