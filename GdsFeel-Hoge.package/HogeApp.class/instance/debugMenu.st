accessing menu
debugMenu
	^ MenuModel new
		addGroup: [ :group | 
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
						action: [ | worldBounds |
							worldBounds := self graphicView morph viewport worldViewBounds.
							self document installSampleGraphicsBounds: worldBounds ] ] .
			self graphicView morph newCanvasEnabled
				ifTrue: [ 
					group
						addItem: [ :item | 
							item
								name: 'Toggle Canvas';
								action: [ graphicView morph useNewCanvas: graphicView morph useNewCanvas not ] ] ].
					]