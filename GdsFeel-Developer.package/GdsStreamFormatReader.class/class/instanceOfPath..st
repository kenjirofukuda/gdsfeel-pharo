as yet unclassified
instanceOfPath: aString
	"self exampleInstance"
	|inst |
	inst := self new stream: (StandardFileStream readOnlyFileNamed: aString).
	^inst
	
	