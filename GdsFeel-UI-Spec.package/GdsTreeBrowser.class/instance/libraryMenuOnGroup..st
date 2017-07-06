menu building
libraryMenuOnGroup: aGroup
	self
		treeSelectedLibraryDo: [ :library | 
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Add Structure...';
						action: [ self addStructure ] ].
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Allocate Layer colors';
						action: [ library autoAllocateLayerColors ] ].
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Expoprt as DXF';
						action: [ library fileOutDxfToDefault ] ].
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Expoprt as JSON';
						action: [ library fileOutJsonToDefault ] ].
			([ #GdsExportAsSVG asClass ]
				on: Error
				do: [ :ex | ex return: nil ])
				ifNotNil: [ :clazz | 
					aGroup
						addItem: [ :anItem | 
							anItem
								name: 'Expoprt as SVG';
								action: [ clazz new perform: #exportLibrary: with: library ] ] ] ]