documentation
readMeMaster
	^'
GdsInform reMakeGDSreaderSample .

GdsStation initialize.
GdsStation default openLibraryNamed: ''BGHIER.DB''.
GdsStation default library.
GdsStation default openStructureNamed: GdsStation default library topStructures first name.
GdsStation default structure subStructures  .

(GdsStation default library structureNamed: ''PC'') referencedStructures.
GdsStation default labelString.
GdsStation default library close.
'