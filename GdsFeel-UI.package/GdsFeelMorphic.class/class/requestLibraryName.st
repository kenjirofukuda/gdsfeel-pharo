utility
requestLibraryName
	| libName ok default |
	libName := nil.
	ok := false.
	default := ''.
	[ ok ]
		whileFalse: [ 
			libName := UIManager default request: 'Enter libraryname:' initialAnswer: default.
			libName ifNil: [ ^ libName ].
			libName := libName trimBoth.
			libName := GdsCompatibility default coerceStructureName: libName.
			libName = ''
				ifTrue: [ 
					libName := nil.
					ok := true ]
				ifFalse: [ 
					(GdsLibrary existsBaseName: libName)
						ifTrue: [ default := libName ]
						ifFalse: [ ok := true ] ] ].
	^ libName