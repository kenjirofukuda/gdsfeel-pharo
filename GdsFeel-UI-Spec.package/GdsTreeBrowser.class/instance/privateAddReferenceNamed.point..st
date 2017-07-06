action - front most structure
privateAddReferenceNamed: aName point: aPoint
	| el |
	self
		frontMostStructureEditorDo: [ :morph | 
			el := GdsStructureReference basicNew initialize.
			el structureName: aName.
			el vertices: (Array with: aPoint).
			morph structure addElement: el.
			morph structure pushDirtyReservedArea: el.
			el statusNumber: GdsElement inDatabaseStausNumber.
			morph structure comitDirty.
			morph structure markDirty.
			morph structure update: #dirty.
			morph structure update: #geometry.
			morph structure save: true.
			morph removeOffCanvas.
			morph changed ]