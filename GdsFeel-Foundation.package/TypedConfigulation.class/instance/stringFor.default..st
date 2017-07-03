as yet unclassified
stringFor: aSymbol default: aValue
	| aVal |
	stringMap ifNil: [stringMap := Dictionary new].
	aVal := stringMap at: aSymbol ifAbsentPut: [aValue].
	aVal ifNil: [^''].
	^aVal asString.