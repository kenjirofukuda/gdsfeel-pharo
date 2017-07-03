as yet unclassified
loadStructures: aDirectory
	"TODO: replace by GdsStructure2 Factory method"
	| subDirs |
	subDirs := aDirectory directories do: [ :dir | 
		(dir extension sameAs: 'structure')
			and: [ GdsCompatibility default isValidStructureName: dir base ] ].
	subDirs do: [ :dir | self loadStructureNamed: dir base ].