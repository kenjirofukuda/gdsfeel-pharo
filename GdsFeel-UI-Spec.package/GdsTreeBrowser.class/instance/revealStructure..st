debugging-use-only
revealStructure: aGdsStructure
	tree updateTree.
	(self nodeOfStructure: aGdsStructure)
		ifNotNil: [ :foundNode | 
			foundNode selected: true.
			"foundNode nodeModel takeHighlight."
			tree selectedItem: foundNode nodeModel ]
