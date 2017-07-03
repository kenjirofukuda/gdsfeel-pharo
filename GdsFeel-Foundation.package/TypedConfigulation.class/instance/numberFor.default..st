as yet unclassified
numberFor: aSymbol default: aValue
	numberMap ifNil: [numberMap := Dictionary new].
	^numberMap at: aSymbol ifAbsentPut: [aValue].