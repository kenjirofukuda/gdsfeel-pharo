private
frontMostStructureEditorDo: aMorphBlock
	self selectedTabDo: [ :morph | 
			morph class = GdsStructureEditorMorph
				ifTrue: [ aMorphBlock value: morph ] ]