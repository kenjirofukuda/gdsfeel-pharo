accessing
viewMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Fit';
						action: [ self inform: 'Fit' ] ] ]