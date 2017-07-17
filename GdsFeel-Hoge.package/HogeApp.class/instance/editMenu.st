accessing menu
editMenu
	^ MenuModel new
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					menuItemMap at: #undo put: item.
					item
						name: 'Undo';
						shortcut: $z command;
						action: [ 
							self editingState undo ] ].
			group
				addItem: [ :item | 
					menuItemMap at: #redo put: item.
					item
						name: 'Redo';
						shortcut: $z shift command ;
						action: [ 
							self editingState redo ] ].
			group
				addItem: [ :item | 
					menuItemMap at: #clear put: item.
					item
						name: 'Clear';
						action: [ 
							self addDeleteSelectionUndoRecord.
							self document removeGraphics: self document selectedGraphics ] ].
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