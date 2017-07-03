accessing
editMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Clear All';
						action: [ self inform: 'Clear All' ] ] ]