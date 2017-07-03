accessing
setUp
	super setUp.
	(Smalltalk at: #GdsInform ifAbsent: [ nil ])
		ifNotNil: [ :clazz | 
			(GdsFeel projectDirectory / 'BGHIER.DB') isFile
				ifFalse: [ clazz makeGDSreaderSample ] ]