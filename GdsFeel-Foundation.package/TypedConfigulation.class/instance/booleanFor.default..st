as yet unclassified
booleanFor: aSymbol default: aValue
	booleanMap ifNil: [booleanMap := Dictionary new].
	^booleanMap at: aSymbol ifAbsentPut: [aValue].