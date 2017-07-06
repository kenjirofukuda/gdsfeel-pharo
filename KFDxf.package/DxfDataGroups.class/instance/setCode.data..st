accessing
setCode: aCode data: aData
	(self dataGroups detect: [ :g | g code = aCode ] ifNone: [  ])
		ifNotNil: [ :g | g data: aData ]
		ifNil: [ self addCode: aCode data: aData ]