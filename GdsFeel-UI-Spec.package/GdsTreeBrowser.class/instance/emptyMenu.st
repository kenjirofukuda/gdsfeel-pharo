initialization
emptyMenu
	^ MenuModel new 
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Empty items';
						action: [ self inform: 'menu is empty' ] ] ]