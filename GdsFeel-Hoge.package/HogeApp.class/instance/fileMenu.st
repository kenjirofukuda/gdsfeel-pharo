accessing menu
fileMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					menuItemMap at: #settings put: item.
					item
						name: 'Settings...';
						action: [ SettingBrowser new
								changePackageSet: {(RPackageOrganizer default packageNamed: 'GdsFeel-Hoge')};
								open;
								expandAll ] ] ]