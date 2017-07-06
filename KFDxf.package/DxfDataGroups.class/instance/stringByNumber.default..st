accessing
stringByNumber: aNumber default: v
	(self dataGroups detect: [ :each | each code = aNumber ] ifNone: [  ])
		ifNotNil: [ :group | ^ group data trim].
	^ v