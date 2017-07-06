action - tree
treeActivatedStructureEditorDo: aBlock
	self
		treeSelectedStructureDo: [ :structure | 
			(self tabForStructure: structure)
				ifNotNil: [ :tab | 
					| morph |
					morph := tab contents.
					(morph isKindOf: GdsStructureEditorMorph)
						ifTrue: [ aBlock value: morph ] ] ]