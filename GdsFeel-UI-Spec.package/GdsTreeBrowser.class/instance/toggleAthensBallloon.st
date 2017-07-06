action - tree
toggleAthensBallloon
	self
		treeSelectedStructureDo: [ :structure | 
			(self tabForStructure: structure)
				ifNotNil: [ :tab | 
					| prevMorph nextMorph |
					prevMorph := tab contents.
					nextMorph := prevMorph.
					prevMorph class = GdsSceneView
						ifFalse: [ 
							nextMorph := prevMorph
								valueOfProperty: #toggleView
								ifAbsentPut: [ 
									(GdsAthensStructureDrawer openMorphWithStructure: prevMorph structure)
										setProperty: #toggleView toValue: prevMorph;
										yourself ].
							nextMorph valueOfProperty: #toggleView ifAbsentPut: [ prevMorph ] ]
						ifTrue: [ 
							prevMorph syncTransform.
							nextMorph := prevMorph valueOfProperty: #toggleView ].
					nextMorph structure: prevMorph structure.
					tab contents: nextMorph.
					nextMorph viewport updatePortBy: prevMorph viewport	"tab contents 
					model: structure;
					viewFit.
				self selectTab: tab." ] ]