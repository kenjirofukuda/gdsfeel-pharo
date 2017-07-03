testing
privateZipMembersOf: aPathToDatabase
	| zipArchive result |
	result := #().
	zipArchive := ZipArchive new.
	[zipArchive readFrom: aPathToDatabase.
	result := zipArchive memberNames]
		on: Error do: [: ex | ].
	zipArchive close.	
	^result.		