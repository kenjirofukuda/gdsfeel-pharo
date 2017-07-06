as yet unclassified
createDatabase
	(GdsLibrary exists: self dbName)
		ifFalse: [ GdsLibrary 
			initializeName: self dbName
			databaseUnits: 1000
			unitString: 'MM' ].	