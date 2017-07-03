objects from disk
makeArchiveOld
	| archive  trimSize |
	(file exists)
		ifTrue: [file delete].
	archive := ZipArchive new.
	trimSize := self extractDirectory fullName size.
	archive 
		addTree: self extractDirectory removingFirstCharacters: trimSize .		
	[archive writeToFileNamed: file] 
		on: Error do: [:ex | self inform: ex description].		
	archive close.	