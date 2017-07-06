as yet unclassified
idExplode
	|    |
	self
		frontMostStructureEditorDo: [ :morph | 
			morph structure idExplode.
			tree updateTree ].