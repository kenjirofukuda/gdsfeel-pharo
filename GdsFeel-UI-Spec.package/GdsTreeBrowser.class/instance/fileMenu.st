initialization
fileMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'New Library...';
						action: [ self newLibrary ] ] ]