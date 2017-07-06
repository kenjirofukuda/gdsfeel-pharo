menu building
structureMenuOnGroup: aGroup
	self
		treeSelectedStructureDo: [ :struct | 
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Show As New Top';
						action: [ self showAsNewTop ] ].
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'toggle visible';
						action: [ self toggleVisibleStructure ] ].
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'toggle Athens/Balloon';
						action: [ self toggleAthensBallloon ] ].

			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Save';
						action: [ self saveStructure ] ].
					
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Duplicate';
						action: [ self duplicateStructure ] ].
					
			aGroup
				addItem: [ :anItem | 
					anItem
						name: 'Export as DXF';
						action: [ self fileOutDxf ] ].
			struct subStructures ifNotEmpty: [ self parentStructureMenuOn: aGroup ] ]