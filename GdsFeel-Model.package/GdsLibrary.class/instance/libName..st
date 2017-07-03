accessing
libName: aString
	libname ifNotNil: [^self error: 'LIBRARY NAME ASSIGNED ONCE'].
	GdsLibrary checkLibName: aString.
	libname := self class baseName: aString.