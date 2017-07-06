as yet unclassified
exampleInstance
	"self exampleInstance"
	| file |
	file := self chooseSampleFile.
	file ifNil: [^nil.].
	^self instanceOfPath: file fullName.
	
	