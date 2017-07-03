as yet unclassified
stringFor: aSymbol value: aBoolean
	stringMap ifNil: [stringMap := Dictionary new].
	stringMap at: aSymbol put: aBoolean.