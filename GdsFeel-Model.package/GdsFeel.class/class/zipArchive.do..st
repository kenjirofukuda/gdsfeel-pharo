utilities
zipArchive: aFile do: aArchiveBlock
	| result |
	result := nil.
	aFile asFileReference readStreamDo: [ :s | 
		s isZipArchive
			ifTrue: [ | ar |
				s binary.
				ar := ZipArchive new readFrom: s.
				result := [aArchiveBlock value: ar]
					ensure: [ar close]]].
	^result