private
nameToStructureMap
	nameToStructureMap 
		ifNil: [ 
			nameToStructureMap := Dictionary new .
			self lookupStructureNames do: [ :structureName | 
				nameToStructureMap 
					at: structureName 
					ifAbsentPut: [GdsStructure fromLibrary: self structureNamed: structureName ] ] ].
	^ nameToStructureMap