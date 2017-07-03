accessing
libName
	libname ifNotNil: [ ^ libname ].
	file ifNotNil: [ ^ self class baseName: file base ].
	^ ''