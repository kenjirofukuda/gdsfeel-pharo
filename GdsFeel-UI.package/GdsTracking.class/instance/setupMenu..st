menu
setupMenu: aMenuGroupModel
	self structureMorph class = GdsStructureEditorMorph 
		ifTrue: [ self setupEditorMenu: aMenuGroupModel ].
	aMenuGroupModel
		addItem: [ :item | 
			item
				name: 'Clear markers';
				action: [ self structureMorph clearMarker] ].
	aMenuGroupModel
		addItem: [ :item | 
			item
				name: 'Fit';
				shortcut: $f command;
				action: [ self viewport viewFit ] ].			