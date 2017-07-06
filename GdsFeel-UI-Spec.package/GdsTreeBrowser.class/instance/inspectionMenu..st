menu building
inspectionMenu: aMenu
	tree selectedItem ifNil: [ ^ self ].
	aMenu
		addGroup: [ :aGroup | 
			self libraryMenuOnGroup: aGroup.
			self structureMenuOnGroup: aGroup.
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Explore';
						action: [ tree selectedItem content explore ] ] ]