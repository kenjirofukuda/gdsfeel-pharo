as yet unclassified
booleanFor: aSymbol value: aBoolean
	booleanMap ifNil: [booleanMap := Dictionary new].
	booleanMap at: aSymbol put: aBoolean.