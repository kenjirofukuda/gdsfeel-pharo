structure control
removeStructure: aGdsStructure
	nameToStructureMap
		ifNotNil: [ 
			(nameToStructureMap removeKey: aGdsStructure name ifAbsent: [  ])
				ifNotNil: [ 
					self clearStructuresCache.
					self
						announce:
							(GdsStructureRemoved new
								structure: aGdsStructure;
								yourself) ] ]