accessing
shapes
	(self sectionNamed: 'ENTITIES')
		ifNotNil: [ :s |
			^ s shapes
			 ].
	^ #()