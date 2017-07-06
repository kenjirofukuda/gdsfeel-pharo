action - tree
showAsNewTop
	self
		treeSelectedStructureDo: [ :structure | 
			(self tabForStructure: structure)
				ifNotNil: [ :tab | 
					| morph |
					morph := tab contents.
					(morph isKindOf: GdsStructureViewMorph)
						ifFalse: [ ^ self inform: 'Can''t running show as new top on Athens' ].
					morph clearAllProxyMorphs.
					self station structure: structure.
					kinds kinds: structure kinds.
					structure kinds announcer
						when: GdsKindsChanged
						send: #redraw
						to: morph.
					layers model: structure layers.
					structure layers announcer
						when: GdsLayersChanged
						send: #redraw
						to: morph.
					structure announcer
						when: GdsElementRemoved
						send: #updateTree
						to: tree.
					morph structure
						ifNotNil: [ :prevStructure | 
							prevStructure kinds announcer unsubscribe: morph.
							prevStructure layers announcer unsubscribe: morph.
							prevStructure announcer unsubscribe: tree ].
					morph
						structure: structure;
						viewFit.
					morph viewport announcer
						when: #viewTransformChanged
						do: [ visibleElementList items: tab contents visibleElements.
							morph clearAllProxyMorphs ].
					structure idSelection idsProerpty
						whenChangedDo: [ self activateElementInspectorInStructure: structure ].
					self handleActivatedStructureMorph: morph.
					World defer: [ self selectTool ].
					self selectTab: tab ] ]