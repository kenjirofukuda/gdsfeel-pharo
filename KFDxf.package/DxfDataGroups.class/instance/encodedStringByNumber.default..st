accessing
encodedStringByNumber: aNumber default: v
	(self dataGroups detect: [ :each | each code = aNumber ] ifNone: [  ])
	ifNotNil: [ :group | ^ group encodedString].
	^ v