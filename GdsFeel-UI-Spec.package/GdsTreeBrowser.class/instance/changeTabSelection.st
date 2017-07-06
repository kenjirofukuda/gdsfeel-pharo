private
changeTabSelection
	self updateTitle.
	self selectedTabDo: [  ] ifNil: [ self clearUISelection. ].
	self frontMostStructureEditorDo: [ :morph | 
		self handleActivatedStructureMorph: morph ] 
