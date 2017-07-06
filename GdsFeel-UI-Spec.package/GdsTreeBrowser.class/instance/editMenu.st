initialization
editMenu
	^ MenuModel new
		autoRefresh: true;
		addGroup: [ :group | 
			self installToolOn: group specSelector: #toolSpecs.
			group
				addItem: [ :item | 
					item
						name: 'Mark element keys' translated;
						action: [ self markElementKeys ] ].
			group
				addItem: [ :item | 
					item
						name: 'Add Structure Reference' translated ;
						action: [ self addReference   ] ] .
			group
				addItem: [ :item | 
					item
						name: 'Selection to new structure';
						action: [ self idStructure  ] ] .
					]