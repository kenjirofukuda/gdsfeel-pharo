action - front most structure
selectByWindow
	self
		frontMostStructureEditorDo: [ :morph | 
			morph currentToolClass: GdsIdWindowTool userInfo: #idAdd:.
			self inform: 'idAdd' ]