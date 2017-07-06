service
saveLibraryWithArchive: aBoolean
	library unitString: 'MICRON'. "TODO: fix"	
	library makeFolder.
	library structures do: [:each | each save: true].
	library autoAllocateLayerColors.
	"library layers explore."
	aBoolean ifTrue: [library close].