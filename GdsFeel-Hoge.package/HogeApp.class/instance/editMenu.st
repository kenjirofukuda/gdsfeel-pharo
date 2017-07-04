accessing menu
editMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					menuItemMap at: #clearAll put: item.
					item
						name: 'Clear All';
						action: [ self document removeAllGraphics ] ] ]