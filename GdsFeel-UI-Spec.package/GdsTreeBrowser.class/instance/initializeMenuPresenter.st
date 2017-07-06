initialization
initializeMenuPresenter
	menu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: nil;
						description: 'Open .DB file';
						icon: Smalltalk ui icons openIcon;
						action: [ self openLibrary ] ].
			group
				addItem: [ :item | 
					item
						name: 'File';
						subMenu: self fileMenu ].
			group
				addItem: [ :item | 
					item
						name: 'Shape';
						subMenu: self shapeMenu ].
			group
				addItem: [ :item | 
					item
						name: 'Environment';
						subMenu: self environmentMenu ].
			group
			
				addItem: [ :item | 
					item
						autoRefresh: true;
						name: 'Debug';
						subMenu: self debugMenu ].
			group
				addItem: [ :item | 
					item
						name: 'Plugin';
						subMenu: self pluginMenu ].
			group
				addItem: [ :item | 
					item
						name: 'Custom';
						subMenu: self customMenu ] ]