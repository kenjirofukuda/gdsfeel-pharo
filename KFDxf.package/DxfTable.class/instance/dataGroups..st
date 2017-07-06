accessing
dataGroups: aCollection
	(aCollection detect: [ :each | each code = 2 ] ifNone: [  ])
		ifNotNil: [:group | self name: group data trim].
	super dataGroups: aCollection