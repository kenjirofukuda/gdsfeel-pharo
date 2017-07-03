objects from disk
makeArchiveNew
	| archive   |
	(file exists)
		ifTrue: [file delete].
	archive := ZipArchive new.
	self extractDirectory directories 
		do: [ :dir | 
			archive addDirectory:  dir as:  dir basename ].
	self extractDirectory files 
		do: [ :f | 
			archive addFile: f as:  f basename ].
	[archive writeToFileNamed: file] 
		on: Error do: [:ex | self inform: ex description].		
	archive close.	