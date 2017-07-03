objects from disk
storageFileDbNamed: aLibName
	| tLibName fullDbName |
	tLibName := self baseName: aLibName.
	fullDbName := (tLibName, self  extension).
	^ GdsFeel projectDirectory / fullDbName.