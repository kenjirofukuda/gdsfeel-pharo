action - front most structure
selectTool
	self
		frontMostStructureEditorDo: [ :morph | 
			morph currentToolClass: GdsSelectTool.
			self inform: 'Select Tool' ]