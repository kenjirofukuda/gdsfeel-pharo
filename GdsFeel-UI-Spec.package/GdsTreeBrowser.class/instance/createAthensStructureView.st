initialization
createAthensStructureView
	^ (self class environment at: #GdsSceneView ifAbsent: [  ])
		ifNotNil: [ :clazz | clazz new ]
		ifNil: [  ]