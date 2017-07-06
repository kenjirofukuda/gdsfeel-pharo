initialization
shapeMenu
	^ MenuModel new
		autoRefresh: true;
		addGroup: [ :group | 
			self installToolOn: group specSelector: #shapeToolSpecs ].