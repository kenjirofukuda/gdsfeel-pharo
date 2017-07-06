colors
backgroundColor
	^ (scene
		ifNotNil: [ scene ]
		ifNil: [ super ]) backgroundColor
