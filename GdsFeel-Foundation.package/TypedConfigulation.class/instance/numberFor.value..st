as yet unclassified
numberFor: aSymbol value: aNumber
	self assert: [aNumber isNumber].
	numberMap ifNil: [numberMap := Dictionary new].
	numberMap at: aSymbol put: aNumber.