as yet unclassified
directoryPath: aDirectoryPath nextNameFor: aBaseName extension: anExtension
	| parent pat version versionNumbers nameWithoutExtension |
	parent := aDirectoryPath asFileReference.
	nameWithoutExtension := aBaseName.
	pat := aBaseName, '*.', anExtension.
	versionNumbers := (parent filesMatching: pat) 
		collect: [ :f | self versionNumberFromName: f basename].				
	versionNumbers ifEmpty: [^aBaseName , '.', anExtension].	
	version := versionNumbers max + 1.
	^(nameWithoutExtension , '.', version asString) , '.', anExtension
	