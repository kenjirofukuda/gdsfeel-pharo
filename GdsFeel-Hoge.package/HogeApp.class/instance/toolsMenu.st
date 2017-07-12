accessing menu
toolsMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					menuItemMap at: #selectTool put: item.
					item
						name: 'Select';
						action: [ self graphicView morph toolClass: HgSelectTool ] ].
			group
				addItem: [ :item | 
					menuItemMap at: #pointTool put: item.
					item
						name: 'Point';
						action: [ self graphicView morph toolClass: HgPointTool ] ] ]