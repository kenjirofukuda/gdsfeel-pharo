action - tree
toggleVisibleStructure
	self
		treeSelectedStructureDo: [ :structure | 
			| visibleState |
			visibleState := structure valueOfProperty: #visible ifAbsentPut: [ true ].
			structure setProperty: #visible toValue: visibleState not.
			tree updateTree.
			(self tabForStructure: structure) ifNotNil: [ :tab | tab contents redraw ] ]