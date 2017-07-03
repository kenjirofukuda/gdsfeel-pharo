initialization
release
	nameToStructureMap ifNotNil: [nameToStructureMap values do: [:each | each release]].
	nameToStructureMap  := nil.
	station := nil.
	super release.