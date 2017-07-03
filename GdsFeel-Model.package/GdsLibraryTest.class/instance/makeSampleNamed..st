tests
makeSampleNamed: aLibName
	lib := GdsLibrary initializeName: aLibName.
	libMap at: lib libName put: lib.
	lib newStructureNamed: lib libName  withActivate: true.
	lib close.
	^lib.
	