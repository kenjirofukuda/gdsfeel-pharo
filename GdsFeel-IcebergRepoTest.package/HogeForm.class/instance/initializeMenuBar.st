initialization
initializeMenuBar
	menuBar := MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Edit';
						subMenu: self editMenu ].
			group
				addItem: [ :item | 
					item
						name: 'View';
						subMenu: self viewMenu ].
			group
				addItem: [ :item | 
					item
						name: 'Debug';
						subMenu: self debugMenu ] ].
	menuBar applyTo: self.