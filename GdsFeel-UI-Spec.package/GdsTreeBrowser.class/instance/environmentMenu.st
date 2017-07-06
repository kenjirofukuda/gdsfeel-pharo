initialization
environmentMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Grid';
						action: [ self changeGrid ] ].
			group
				addItem: [ :item | 
					item
						name: 'Grid Scale';
						action: [ self changeGridScale ] ].
					 ]