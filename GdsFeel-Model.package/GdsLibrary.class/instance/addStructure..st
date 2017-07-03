structure control
addStructure: aGdsStructure
	| ann |
	nameToStructureMap ifNil: [ nameToStructureMap := Dictionary new ].
	nameToStructureMap at: aGdsStructure name put: aGdsStructure.
	self clearStructuresCache.
	ann := GdsStructureAdded new structure: aGdsStructure.
	self announce: ann.
	self clearStructuresCache.
	