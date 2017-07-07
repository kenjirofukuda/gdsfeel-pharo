accessing menu
debugMenu
	^ MenuModel new
		addGroup: [ :group | 
			self graphicView morph newCanvasEnabled
				ifTrue: [ 
					group
						addItem: [ :item | 
							item
								name: 'Toggle Canvas';
								action: [ graphicView morph useNewCanvas: graphicView morph useNewCanvas not ] ] ].
			group
				addItem: [ :item | 
					item
						name: 'Reveal AppConfigDir';
						action: [ self inform: 'eveal AppConfigDir' ] ].
			group
				addItem: [ :item | 
					item
						name: 'Show Axis line';
						action: [ self inform: 'Show Axis line' ] ].
			group
				addItem: [ :item | 
					item
						name: 'Show Extent bounds';
						action: [ self inform: 'Show Extent bounds' ] ].
			group
				addItem: [ :item | 
					item
						name: 'Install sample graphics';
						action: [ self document installSampleGraphics ] ] ]