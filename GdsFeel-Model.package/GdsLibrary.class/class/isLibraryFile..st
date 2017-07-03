testing
isLibraryFile: aFileReference
	| result |
	(aFileReference extension sameAs: 'DB')
		ifFalse: [ ^ false ].
	aFileReference size < 4
		ifTrue: [ ^ false ].
	result := false.
	aFileReference
		readStreamDo: [ :s | 
			s binary.
			s isZipArchive
				ifTrue: [ | ar names |
					ar := ZipArchive new.
					[ ar readFrom: s ]
						on: Error
						do: [ :ex | 
							ex traceCr.
							^ false ].
					names := ar memberNames.
					"result := {'LIB.ini'} allSatisfy: [ :file | names includes: file ]"
					result := names notEmpty ] ].
	^ result