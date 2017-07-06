adding
addDataGroup: aDxfDataGroup
	dataGroups ifNil: [ dataGroups := OrderedCollection new ].
	dataGroups add: aDxfDataGroup.