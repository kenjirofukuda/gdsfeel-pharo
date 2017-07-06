menu
setupIdSelectionMenu: aMenuGroupModel
	aMenuGroupModel
		addItem: [ :item | 
			item
				name: 'Fit selection' translated;
				action: [ self structureMorph viewport viewBounds: event handler structure dataExtentForIdElements ] ].
	aMenuGroupModel
		addItem: [ :item | 
			item
				name: 'Clear selection' translated;
				action: [ self structureMorph structure idSelection idClear ] ].
	aMenuGroupModel
		addItem: [ :item | 
			item
				name: 'Explore selection' translated;
				action: [ | elements |
					elements := self structureMorph structure idSelection elements.
					(elements size = 1 ifTrue: [ elements first ] ifFalse: [ elements ])
						explore.
					 ] ].
	aMenuGroupModel addItem: [ :item | item name: '-'].
	aMenuGroupModel
		addItem: [ :item | 
			item
				name: 'Delete' translated;
				action: [ self structureMorph structure idSelection idDelete ] ]