initialization
pluginMenu
	| classes |
	classes := GdsPlugin new enabledPluginClasses.
	classes ifEmpty: [ ^ self emptyMenu ].
	^ MenuModel new
		addGroup: [ :group | 
			classes
				do: [ :clazz | 
					| plugin |
					plugin := clazz new.
					group
						addItem: [ :item | 
							item
								name: plugin caption;
								action: [ plugin entryPoint ] ] ] ]