accessing menu
editMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					menuItemMap at: #clearAll put: item.
					item
						name: 'Clear All';
						action: [ self document removeAllGraphics ] ].
			group
				addItem: [ :item | 
					menuItemMap at: #clear put: item.
					item
						name: 'Clear';
						action: [ self inform: item name ] ].
			group
				addItem: [ :item | 
					menuItemMap at: #selectAll put: item.
					item
						name: 'Select All';
						action: [ 
							self document selectGraphics: self document graphics.
							self graphicView morph clearOffCanvas; changed. "TODO: fire event" ] ].
			group
				addItem: [ :item | 
					menuItemMap at: #deselectAll put: item.
					item
						name: 'Deselect All';
						action: [ 
							self document unselectGraphics: self document graphics.
							self graphicView morph clearOffCanvas; changed. "TODO: event"  ] ].
					 ]