documentation-support
openAsAthens
	(Smalltalk at: #GdsAthensStructureDrawer ifAbsent: [ nil ])
		ifNotNil: [ :clazz |  | view |
			view := clazz openStructure: self structure .
			GdsStation default announcer on: GdsStructureClosed do: [ view delete. ]
			]