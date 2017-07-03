initialization
initialize
	super initialize.
	self damageStorageInformation.
	"items := GdsItems new station: self."
	library := GdsObjectProperty named: 'library' type: GdsLibrary owner: self.
	library nilAllowed: true.
	library whenChangedPropertyDo:  [ :prop :ann | self handleLibraryChanged: ann ].
	
	structure := GdsObjectProperty named: 'structure' type: GdsStructure owner: self.
	structure nilAllowed: true.
	structure whenChangedPropertyDo:  [ :prop :ann | self handleStructureChanged: ann ].
	
	self announcer when: GdsLibraryCreated send: #damageStorageInformation to: self.
	 