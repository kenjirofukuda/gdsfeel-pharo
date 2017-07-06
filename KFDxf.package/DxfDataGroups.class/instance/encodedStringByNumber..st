accessing
encodedStringByNumber: aNumber
	(self dataGroups detect: [ :each | each code = aNumber ] ifNone: [  ])
		ifNotNil: [ :group | ^ group encodedString].
	^ nil