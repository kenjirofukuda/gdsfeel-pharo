accessing
stringByNumber: aNumber
	(self dataGroups detect: [ :each | each code = aNumber ] ifNone: [  ])
		ifNotNil: [ :group | ^ group data trim].
	^ nil