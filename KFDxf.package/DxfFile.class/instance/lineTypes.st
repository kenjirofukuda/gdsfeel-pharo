accessing
lineTypes
	(self sectionNamed: 'TABLES')
		ifNotNil:
			[ :s | (s tableNamed: 'LTYPE') ifNotNil: [ :table | ^ table lineTypes ] ].
	^ #()