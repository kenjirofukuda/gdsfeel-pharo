private
handleDoubleClick
	self treeSelectedStructureDo: [ :structure | 
		^ 	Cursor wait 
				showWhile: [.
					self showAsNewTop] ].
	self inform: 'Empty Handler'