accessing menu
debugMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Reveal AppConfigDir';
						action: [ WebBrowser openOn: self document appConfigDirectory resolve asUrl ] ].
			group
				addItem: [ :item | 
					item
						name: 'Show Axis line';
						action: [ self graphicView morph showAxisLines: self graphicView morph showAxisLines not ] ].
			group
				addItem: [ :item | 
					item
						name: 'Show Extent bounds';
						action: [ self graphicView morph showExtentBounds: self graphicView morph showExtentBounds not ] ].
			group
				addItem: [ :item | 
					item
						name: 'Install sample graphics';
						action: [ | worldBounds |
							worldBounds := self graphicView morph viewport worldViewBounds.
							self document installSampleGraphicsBounds: worldBounds ] ].
			self graphicView morph newCanvasEnabled
				ifTrue: [ group
						addItem: [ :item | 
							item
								name: 'Toggle Canvas';
								action: [ graphicView morph useNewCanvas: graphicView morph useNewCanvas not ] ] ] ]