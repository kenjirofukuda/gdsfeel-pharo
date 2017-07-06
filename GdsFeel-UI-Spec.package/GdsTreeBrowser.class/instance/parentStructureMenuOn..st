menu building
parentStructureMenuOn: aGroup
	aGroup
		addItem: [ :anItem | 
			anItem
				name: 'Sort By Area';
				action: [ self sortByArea ] ].
	aGroup
		addItem: [ :anItem | 
			anItem
				name: 'Sort By Name';
				action: [ self sortByName ] ]