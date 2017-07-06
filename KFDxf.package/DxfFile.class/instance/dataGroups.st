accessing
dataGroups
	^ dataGroups ifNil: [ dataGroups := self lookupDataGroups ]